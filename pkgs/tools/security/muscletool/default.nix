{stdenv, fetchurl, libmusclecard, pcsclite, pkgconfig }:
stdenv.mkDerivation {
  name = "muscletool-2.1.1";

  src = fetchurl {
    url = https://alioth.debian.org/frs/download.php/3180/muscletool-2.1.1.tar.bz2;
    sha256 = "11d812ijvhsaxwkr05hzxfl0n6ji9hwl5j1kv56f9gv8kyy3b9kw";
  };

  buildInputs = [ libmusclecard pcsclite pkgconfig ];

  meta = with stdenv.lib; {
    description = "Smart card applications for use with MUSCLE plugins";
    homepage = http://muscleapps.alioth.debian.org/;
    license = licenses.bsd3;
    maintainers = with maintainers; [viric];
    # XXX: don't build before libmusclecard is fixed
    # platforms = with stdenv.lib.platforms; linux;
  };
}
