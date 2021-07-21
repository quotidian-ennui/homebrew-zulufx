cask 'zulufx8' do
  version '8.0.292,8.54.0.21-ca-fx'
  sha256 'e12b6add2bab416b87d8d3000bdaca55a1f1849092328ad55a1950e33b79ce4d'

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
