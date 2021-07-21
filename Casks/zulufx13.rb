cask 'zulufx13' do
  version '13.0.7,13.40.15-ca-fx'
  sha256 'b161e6ae6f352e50eba5c31a50a7079b2f25fb8e9b303454dc3182ab671dc102'

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