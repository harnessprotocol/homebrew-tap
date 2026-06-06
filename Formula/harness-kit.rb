class HarnessKit < Formula
  desc "Compile and validate harness.yaml for AI coding tools"
  homepage "https://github.com/harnessprotocol/harness-kit"
  url "https://github.com/harnessprotocol/harness-kit/releases/download/v#{version}/harness-kit-v#{version}-darwin-arm64.tar.gz"
  sha256 "97b1ef91ca1df7703bab034515e12cb6c427eda33e99c1eb6ac450f17d2e8af3"
  license "Apache-2.0"
  version "0.10.0"

  depends_on arch: :arm64

  def install
    bin.install "harness-kit"
  end

  test do
    system bin/"harness-kit", "--version"
  end
end
