cask 'zulufx8' do
  version '8.0.265,8.48.0.53-ca-fx'
  sha256 'e1313892ba09ef4c9f2e263ae5e82422f7975667326fb7c371438dc17ddb0163'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.zip",
      referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java 8 Standard Edition Development Kit with JavaFX'
  homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

  depends_on macos: '>= :yosemite'
  conflicts_with cask: 'zulu8'

  artifact "zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64/zulu-8.jdk", target: "/Library/Java/JavaVirtualMachines/zulufx8.jdk"

  postflight do
    system_command '/usr/libexec/java_home', args: ['--verbose'], print_stdout: true
  end
end