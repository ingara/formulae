class TmuxLazySession < Formula
  desc "Tmux sessions for lazy people"
  homepage "https://github.com/ingara/tmux-lazy-session"
  url "https://github.com/ingara/tmux-lazy-session.git", tag: "v1.0.8", revision: "5e4201de631fdcf25c71312a5b7fd1e9187d36f2"
  sha256 ""
  version "v1.0.8"
  license ""

  head "https://github.com/ingara/tmux-lazy-session.git", shallow: false

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "tmux-lazy-session"
    bin.install "target/release/tmux-lazy-session"
  end
end
