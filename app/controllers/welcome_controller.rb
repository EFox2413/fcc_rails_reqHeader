class WelcomeController < ApplicationController
    def getHeader
        ip = request.remote_ip
        lang = request.env["HTTP_ACCEPT_LANGUAGE"]
        software = request.env["HTTP_USER_AGENT"]

        lang = lang[/(.*),/, 1]
        software = software[/\((.*)\)/, 1].split(')')[0]

        render json: { ipaddress: ip, language: lang, software: software}
    end
end
