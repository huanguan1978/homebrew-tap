# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "chabox" do
  version "1.0.0"
  # version "1.0.0"  
  # sha256 "c85d6ed784429dced7842626a9bf9fed03d8fbf1b9bb9c899d50d69cfaafb0bd"
  sha256 :no_check

  url "https://webpath.iche2.com/release/ChaBox-#{version}-universal.dmg"
  name "ChaBox"
  desc "ChaBox: Open-source offline file security workstation."
  homepage "https://webpath.iche2.com/chadoc/en/"

  def caveats
    <<~EOS
      ChaBox is a visual, one-click secure vault for everyday users and power users.

      Core Capabilities:
      - Five atomic tools: Batch Archive, Batch Unarchive, Batch Encrypt, Batch Decrypt, and Digital Shredder.
      - Secure Notes: immersive Markdown writing with encrypted embedded images (local and remote HTTP).
      - Active defense: App Lock, Idle Lock, Anti-Screenshot, Full-Platform Anti-Recording, and Screen Masking.
      - Physical destruction: industrial-grade file wiping for sensitive originals.

      Quick Start:
      - https://webpath.iche2.com/chadoc/en/start/

      For automation workflows, use Chapose: 
      - https://github.com/huanguan1978/chacrypt/tree/main/chapose
    EOS
  end

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url "https://webpath.iche2.com/release/"
    regex(/ChaBox-(\d+(?:\.\d+)*)-universal\.dmg/i)
    strategy :page_match
  end

  depends_on macos: ">= :catalina"

  app "ChaBox.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: [
    "~/Library/Caches/com.iche2.chabox.macos",
  ]
end
