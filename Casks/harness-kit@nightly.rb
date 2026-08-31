cask "harness-kit@nightly" do
  version "20260815"
  sha256 "1659787cb1c76fbb61132e46321643eb3e886d7e2b48b3f9c2f9e15aaf773966"

  url "https://github.com/harnessprotocol/harness-kit/releases/download/nightly/HarnessKit-nightly-darwin-arm64.dmg"
  name "Harness Kit (Nightly)"
  desc "Desktop app for managing AI coding tool configurations (nightly build)"
  homepage "https://github.com/harnessprotocol/harness-kit"

  app "Harness Kit.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Harness Kit.app"]
  end

  caveats <<~EOS
    This is a nightly build from main. Expect rough edges.
    This app is not notarized. The quarantine flag is cleared automatically on install.
    If you still see a security warning, right-click the app and select Open.
  EOS

  zap trash: [
    "~/Library/Application Support/com.harnesskit.desktop",
    "~/Library/Caches/com.harnesskit.desktop",
  ]
end
