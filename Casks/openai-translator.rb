cask "openai-translator" do
    arch arm: "aarch64", intel: "x64"

    version "0.0.36"
    sha256 arm: "0edfecd0984f36d5828f45c60e985b570862f2d9fefa1851f92799ec6cec630a",
         intel: "55cff09700d3dd4f634142e1fd360b8c2b5289e79f8a1557d06a278d6ad1c6c8"
  
    url "https://github.com/yetone/openai-translator/releases/download/v#{version}/OpenAI.Translator_#{version}_#{arch}.dmg"
    name "OpenAI Translator"
    desc "Cross-platform desktop application for translation based on ChatGPT API."
    homepage "https://github.com/yetone/openai-translator"
  
    app "OpenAI Translator.app"
  
    zap trash: [
      "~/Library/Preferences/xyz.yetone.apps.openai-translator",
      "~/Library/Saved Application State/xyz.yetone.apps.openai-translator.savedState",
    ]
end