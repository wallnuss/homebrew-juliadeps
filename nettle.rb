require 'formula'

class Nettle < Formula
  homepage 'http://www.lysator.liu.se/~nisse/nettle/'
  url 'http://www.lysator.liu.se/~nisse/archive/nettle-2.6.tar.gz'
  sha1 '401f982a0b365e04c8c38c4da42afdd7d2d51d80'

  bottle do
    root_url 'http://archive.org/download/julialang/bottles'
    cellar :any
    revision 1
    sha1 '1e1b9a8293bc9be61ab882c38a66e25853da8313' => :snow_leopard_or_later
  end

  depends_on 'staticfloat/juliadeps/gmp'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--enable-shared"
    system "make"
    system "make install"
    system "make check"
  end
end
