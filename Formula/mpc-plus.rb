class MpcPlus < Formula
  PACKAGE_VERSION = "0.0.1".freeze

  desc "CLI for uploading mini-program builds (WeChat, Douyin, Alipay, XHS)"
  homepage "https://github.com/pkc918/mpc-plus"
  url "https://registry.npmjs.org/@mpc-plus/cli/-/cli-#{PACKAGE_VERSION}.tgz"
  version PACKAGE_VERSION
  sha256 "36904dbe6de9b0079ab2bc47ba1c926e4b3cc6d0ac63fb2d8a4f651f11a63838"
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
