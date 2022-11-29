{ lib, fetchzip }:

let
  name = "haam-fonts";
  version = "2.0";
in fetchzip {
  name = "${name}-${version}";

  url = "https://github.com/Haam-z/fonts/archive/refs/heads/master.zip";

  postFetch = ''
    mkdir -p $out/share/fonts/otf
    mkdir -p $out/share/fonts/ttf
    install -m444 -Dt $out/share/fonts/ttf fonts/ttf/*.ttf;
    install -m444 -Dt $out/share/fonts/otf fonts/otf/*.otf;
  '';

  meta = with lib; {
    homepage = "https://rsms.me/inter/";
    description = "A typeface specially designed for user interfaces";
    license = licenses.ofl;
    platforms = platforms.all;
    maintainers = with maintainers; [ demize dtzWill ];
  };
}