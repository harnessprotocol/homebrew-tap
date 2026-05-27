class HarnessKit < Formula
  desc "Compile and validate harness.yaml for AI coding tools"
  homepage "https://github.com/harnessprotocol/harness-kit"
  url "https://github.com/harnessprotocol/harness-kit/releases/download/v#{version}/harness-kit-v#{version}-darwin-arm64.tar.gz"
  sha256 "a61f5fdb0bbb1d04967ea8e3d5abd0e8b7c3ebe1eb1e8039e89b013512c0ee1c"
  license "Apache-2.0"
  version "0.8.1"

  depends_on arch: :arm64

  def install
    bin.install "harness-kit"
  end

  test do
    system bin/"harness-kit", "--version"
  end
end
