{ stdenv, fetchurl, gtk2, pkgconfig }:

stdenv.mkDerivation rec {
  version = "0.2.8-6";
  pname = "xarchive";

  src = fetchurl {
    url = "mirror://sourceforge/xarchive/${pname}-${version}.tar.gz";
    sha256 = "0chfim7z27s00naf43a61zsngwhvim14mg1p3csbv5i3f6m50xx4";
  };

  nativeBuildInputs = [ pkgconfig ];
  buildInputs = [ gtk2 ];

  hardeningDisable = [ "format" ];

  meta = {
    description = "A GTK front-end for command line archiving tools";
    maintainers = [ stdenv.lib.maintainers.domenkozar ];
    license = stdenv.lib.licenses.gpl2;
    platforms = stdenv.lib.platforms.all;
  };
}
