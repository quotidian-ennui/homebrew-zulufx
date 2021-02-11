cask 'zulufx13' do
  version '13.0.6,13.37.21-ca-fx'
  sha256 '447ad93d5d5587f1e5581b51c7ae821f1d2de19a13a0e0f63b38b83e4a81bb34'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.zip",
      referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java 13 Standard Edition Development Kit with JavaFX'
  homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

  depends_on macos: '>= :yosemite'
  conflicts_with cask: 'zulu13'

  artifact "zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64/zulu-13.jdk", target: "/Library/Java/JavaVirtualMachines/zulufx13.jdk"

  postflight do
    system_command '/usr/libexec/java_home', args: ['--verbose'], print_stdout: true
  end
end