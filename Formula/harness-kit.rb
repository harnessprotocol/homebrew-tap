class HarnessKit < Formula
  desc "Compile and validate harness.yaml for AI coding tools"
  homepage "https://github.com/harnessprotocol/harness-kit"
  # `version` must be declared before it's interpolated into `url` below —
  # Homebrew's formula DSL evaluates the class body top-to-bottom, so a `url`
  # referencing #{version} above its `version` line resolves against nil and
  # silently degrades to a malformed download URL.
  version "0.13.0"
  url "https://github.com/harnessprotocol/harness-kit/releases/download/v#{version}/harness-kit-v#{version}-darwin-arm64.tar.gz"
  sha256 "b6d6c45e6dfcabe23026d8ee0fe35680a46cad73b266c522a55f0f8bc1ef5ce7"
  license "Apache-2.0"

  depends_on arch: :arm64

  def install
    bin.install "harness-kit"
    # `harness` is a shorter alias for the same binary — README examples and
    # docs use it interchangeably with `harness-kit`.
    bin.install_symlink "harness-kit" => "harness"
  end

  test do
    system bin/"harness-kit", "--version"
  end
end
