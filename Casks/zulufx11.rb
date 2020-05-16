cask 'zulufx11' do
  version '11.0.7,11.39.15-ca-fx'
  sha256 '45c586ce93972f79be923bd17fc16d0f1b3664ef0edba86b948334e5c502c0f8'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.zip",
      referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java 11 Standard Edition Development Kit with JavaFX'
  homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

  depends_on macos: '>= :yosemite'
  conflicts_with cask: 'zulu11'

  artifact "zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64/zulu-11.jdk", target: "/Library/Java/JavaVirtualMachines/zulufx11.jdk"

  postflight do
    system_command '/usr/libexec/java_home', args: ['--verbose'], print_stdout: true
  end
end
