cask 'zulufx13' do
  version '13.0.4,13.33.25-ca-fx'
  sha256 '4d1f04eaec4c493407281bb9030b30cbaf91cd6204de5a90ac89d0d5be1e90df'

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
