# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "gai" do
  version "1.1.2"
  # sha256 "26084e6340ff292e4846ff6d2f68f16cf3d00efa084adfada5141869ff5e62bb"
  sha256 :no_check

  url "https://webpath.iche2.com/release/Gai-#{version}-universal.dmg"
  name "Gai"
  desc "Generative-AI Tools For Beginner"
  homepage "https://webpath.iche2.com/gaidoc/en/"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url "https://webpath.iche2.com/release/"
    regex(/Gai-(\d+(?:\.\d+)*)-universal\.dmg/i)
    strategy :page_match
  end

  depends_on macos: ">= :catalina"

  app "Gai.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: ""
end
