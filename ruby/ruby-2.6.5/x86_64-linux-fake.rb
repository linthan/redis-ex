baseruby="/usr/local/ruby/bin/ruby --disable=gems"
_\
=begin
_=
ruby="${RUBY-$baseruby}"
case "$ruby" in "echo "*) $ruby; exit $?;; esac
case "$0" in /*) r=-r"$0";; *) r=-r"./$0";; esac
exec $ruby "$r" "$@"
=end
=baseruby
class Object
  remove_const :CROSS_COMPILING if defined?(CROSS_COMPILING)
  CROSS_COMPILING = RUBY_PLATFORM
  constants.grep(/^RUBY_/) {|n| remove_const n}
  RUBY_VERSION = "2.6.5"
  RUBY_RELEASE_DATE = "2019-10-01"
  RUBY_PLATFORM = "x86_64-linux"
  RUBY_PATCHLEVEL = 114
  RUBY_REVISION = 67812
  RUBY_COPYRIGHT = "ruby - Copyright (C) 1993-2019 Yukihiro Matsumoto"
  RUBY_ENGINE = "ruby"
  RUBY_ENGINE_VERSION = "2.6.5"
  RUBY_DESCRIPTION = RubyVM.const_defined?(:MJIT) && RubyVM::MJIT.enabled? ?
    "ruby 2.6.5p114 (2019-10-01 revision 67812) +JIT [x86_64-linux]" :
    "ruby 2.6.5p114 (2019-10-01 revision 67812) [x86_64-linux]"
end
builddir = File.dirname(File.expand_path(__FILE__))
srcdir = "."
top_srcdir = File.realpath(srcdir, builddir)
fake = File.join(top_srcdir, "tool/fake.rb")
eval(File.binread(fake), nil, fake)
ropt = "-r#{__FILE__}"
["RUBYOPT"].each do |flag|
  opt = ENV[flag]
  opt = opt ? ([ropt] | opt.b.split).join(" ") : ropt
  ENV[flag] = opt
end
