cask "openai-translator" do
    arch arm: "aarch64", intel: "x64"

    version "0.4.21"
    sha256 arm: "71124edfa7dc61a57dd2eb3cc92ffa680bd1fe64af926414162169b687eabb99",
         intel: "358d70a841fac060abf8824182e7a78194f030018a6379fdb5ca58d4d7a0b43e"

    url "https://github.com/openai-translator/openai-translator/releases/download/v#{version}/OpenAI.Translator_#{version}_#{arch}.dmg"
    name "OpenAI Translator"
    desc "Cross-platform desktop application for translation based on ChatGPT API."
    homepage "https://github.com/openai-translator/openai-translator"

    app "OpenAI Translator.app"

    postflight do
        system_command '/usr/bin/xattr',
                args: [
                        '-d', 'com.apple.quarantine',
                        "#{staged_path}/OpenAI\ Translator.app"
                      ],
                sudo: true
   end


    zap trash: [
      "~/Library/Preferences/xyz.yetone.apps.openai-translator",
      "~/Library/Saved Application State/xyz.yetone.apps.openai-translator.savedState",
    ]
end
