class TmuxLazySession < Formula
  desc "Tmux sessions for lazy people"
  homepage "https://github.com/ingara/tmux-lazy-session"
  url "https://github.com/ingara/tmux-lazy-session.git", tag: "v1.0.4", revision: "f58e9c6719edf78a9da138b7e3d76350b04626ae"
  sha256 ""
  version "v1.0.4"
  license ""

  head "https://github.com/ingara/tmux-lazy-session.git", shallow: false

  def install
    bin.install "tmux-lazy-session"
  end
end
