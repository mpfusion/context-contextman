# usage: runtools columns.rb
#
# copyright=pragma-ade readme=readme.pdf licence=cc-gpl

job = Job.new

Dir.glob('cols-*.tex').each do |file|
    job.execute_command("texmfstart texexec --int=en --pdf --env=cols-000 #{file}")
end

job.execute_command("texmfstart ctxtools --purge")
