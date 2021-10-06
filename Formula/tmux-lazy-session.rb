class TmuxLazySession < Formula
  desc "Tmux sessions for lazy people"
  homepage "https://github.com/ingara/tmux-lazy-session"
  url "https://github.com/ingara/tmux-lazy-session.git", tag: "v1.0.4", revision: "f58e9c6719edf78a9da138b7e3d76350b04626ae"
  sha256 ""
  version "v1.0.4"
  license ""

  head "https://github.com/ingara/tmux-lazy-session.git", shallow: false

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "tmux-lazy-session"
    bin.install "target/release/tmux-lazy-session"
  end
end
