cask 'zulufx13' do
  version '13.0.3,13.31.11-ca-fx'
  sha256 '8a9c3fe1b033ef6ffe06a7092c1bac4cdfc9b8070bdf63cc6486f2f0a90cdeea'

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
