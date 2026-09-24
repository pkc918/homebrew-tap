class MpcPlus < Formula
  PACKAGE_VERSION = "0.0.1-beta.1".freeze

  desc "CLI for uploading mini-program builds (WeChat, Douyin, Alipay, XHS)"
  homepage "https://github.com/pkc918/mpc-plus"
  url "https://registry.npmjs.org/@mpc-plus/cli/-/cli-#{PACKAGE_VERSION}.tgz"
  version PACKAGE_VERSION
  sha256 "b718d6903c487bac112aa42be365d9a783b205d554f1c1920b9d8db203f9964c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/mpc --version").strip
    assert_match "Upload mini program", shell_output("#{bin}/mpc --help")
  end
end
