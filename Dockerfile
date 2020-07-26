FROM ryskito/docker_ruby_imagemagick:ruby2.6.3_imagemagick7.0.10-0_v1.0.0

RUN apk add -U chromium chromium-chromedriver
RUN apk --update add libxml2-dev
RUN apk --update add xz
RUN apk --update add tar
RUN apk --update add build-base
RUN apk --update add libxslt-dev
RUN apk --update add curl-dev
RUN apk --update add curl
RUN apk --update add unzip
RUN apk --update add postgresql-dev
RUN apk --update add nodejs
RUN apk --update add yarn
RUN apk --update add dbus-glib
RUN apk --update add libxinerama-dev
RUN apk --update add libxinerama
RUN apk --update add libreoffice
RUN apk --update add libreoffice-lang-ja
RUN apk --update add tzdata
RUN apk --update add git
RUN apk --update add exiftool
RUN apk --update add libjpeg-turbo-dev
RUN apk --update add libpng-dev
RUN apk --update add ghostscript \
    && ghost_script_version=9.27 \
    && ipa_font_file=IPAexfont00401 \
    && wget https://ipafont.ipa.go.jp/IPAexfont/${ipa_font_file}.zip -O /root/${ipa_font_file}.zip \
    && unzip /root/${ipa_font_file}.zip -d /root/.fonts \
    && fc-cache -fv \
    && rm /root/${ipa_font_file}.zip \
    && echo $'/IPAMincho << /FileType /TrueType /Path (/root/.fonts/${ipa_font_file}/ipaexm.ttf) /CSI [(Japan1) 6] >> ;\n\
/IPAGothic << /FileType /TrueType /Path (/root/.fonts/${ipa_font_file}/ipaexg.ttf) /CSI [(Japan1) 6] >> ;\n\
/Adobe-Japan1 /IPAMincho ;' >> /usr/share/ghostscript/${ghost_script_version}/Resource/Init/cidfmap
