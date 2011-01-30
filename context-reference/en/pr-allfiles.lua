local function file2table(f, dir, t)
	local ff = dir .. "/" .. f
	if lfs.attributes(ff, "mode") ~= "file" then
		return
	end
	local b = file.removesuffix(f)
	t[b] = t[b] or {}
	t[b].suffixes = t[b].suffixes or {}
	table.insert(t[b].suffixes, file.suffix(f))
	ff = io.open(ff)
	local head = ff:read(500)
	ff:close()
	t[b].title = t[b].title or head:match(".+\n%%D%s+title=(.-),.-\n.+")
	t[b].subtitle = t[b].subtitle or
		head:match(".+\n%%D%s+subtitle=(.-),.-\n.+")
	t[b].comment = t[b].comment or
		head:match('.+\n%s*comment%s*=%s*"(.-)",\n.+') or
		head:match('.+\n%s*comment%s*:%s*(.-)\n.+')
end

local function suffix_sort(a, b)
	if a == "tex" then
		return true
	elseif b == "tex" then
		return false
	else
		return a < b
	end
end

local function list_files(dir)
	local t, tt = {}, {}
	for entry in lfs.dir(dir) do
		file2table(entry, dir, t)
	end
	for k, v in pairs(t) do
		tt[#tt + 1] = v
		tt[#tt].name = k
		table.sort(tt[#tt].suffixes, suffix_sort)
		tt[#tt].main_suffix = tt[#tt].suffixes[1]
		table.remove(tt[#tt].suffixes, 1)
	end
	table.sort(tt, function (a, b) return a.name < b.name end)
	for _, v in ipairs(tt) do
		context.contextfile({v.name .. "." .. v.main_suffix},
							{title="{" .. (v.title or v.comment or "") .. "}",
							 subtitle="{" .. (v.subtitle or "") .. "}",
							 plusfiles="{" ..
								 table.concat(v.suffixes, ",")
							 .. "}"})
	end
end

local function scan_dir(dir)
	local title = string.format("Files in {\\tt %s}",
								dir:match("^.+/(.-/.-/.-)$"))
	context.startsection({title = title})
	context.begingroup()
	context.switchtobodyfont({"9pt"})
	context.starttabulate({"|lT|l|p|"})
	context([[ \NC \rm\bf filename(s) \NC title \NC subtitle \NC \FR ]])
	list_files(dir)
	context.stoptabulate()
	context.endgroup()
	context.stopsection()
end

local root = file.dirname(file.dirname(resolvers.findfile"context.mkiv"))
for entry in lfs.dir(root) do
	if entry:match("^[^.]") then
		local dir = root .. "/" .. entry
		if file.basename(dir) == "base" then -- the other sub-dirs later...
			scan_dir(dir)
		end
	end
end
