# usage: runtools ma-cb.rb
#
# copyright=pragma-ade readme=readme.pdf licence=cc-gpl

job = Job.new

['en','nl','cz'].each do |language|
    ['paper','screen','bound'].each do |mode|
        job.execute_command("cd #{language}")
        job.execute_command("texmfstart texexec --pdf --mode=#{mode} ma-cb-#{language} --result=ma-cb-#{language}-#{mode}")
        job.execute_command("mv ma-cb-#{language}-#{mode} ../")
        job.execute_command("cd ..")
    end
end

['cz'].each do |language|
    ['bulletin'].each do |mode|
        job.execute_command("cd #{language}")
        job.execute_command("texmfstart texexec --pdf --mode=#{mode} ma-cb-#{language} --result=ma-cb-#{language}-#{mode}")
        job.execute_command("mv ma-cb-#{language}-#{mode} ../")
        job.execute_command("cd ..")
    end
end

