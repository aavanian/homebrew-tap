class PinentryTouchid < Formula
  desc "GPG pinentry program that fetches the passphrase from the Keychain via Touch ID"
  # Upstream jorgelbg/pinentry-touchid is unmaintained since 2023; this fork
  # carries the GnuPG 2.4+ compatibility fixes. Built from source at a reviewed
  # revision: the fork publishes hand-built release binaries with no CI
  # provenance, so the tap's own bottles are not used. Revision is ahead of the
  # v0.0.4 tag, which predates the log-file handling fix.
  # Review: ~/Documents/Dev/Security/pinentry-touchid-review.md
  homepage "https://github.com/lujstn/pinentry-touchid"
  url "https://github.com/lujstn/pinentry-touchid.git",
      revision: "5c8f1f70a6a515f0bf90784fb1b6b6e5c363d02d"
  version "0.0.4-20260220"
  license "Apache-2.0"

  depends_on "go" => :build
  depends_on :macos
  depends_on "pinentry"
  depends_on "pinentry-mac"

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.version=#{version}")
  end

  def caveats
    <<~EOS
      Point gpg-agent at this pinentry by adding to ~/.gnupg/gpg-agent.conf:
        pinentry-program #{opt_bin}/pinentry-touchid

      Then reload the agent:
        gpg-connect-agent reloadagent /bye
    EOS
  end
end
