require "bundler_push_host/version"

module BundlerPushHost
  def self.set_host(host)
    ::Bundler::GemHelper.class_eval do
      define_method(:rubygem_push) do |path|
        sh("gem push '#{path}' --host #{host}")
        Bundler.ui.confirm "Pushed #{name} #{version} to #{host}"
      end
    end
  end

  def self.set_geminabox_host(host)
    ::Bundler::GemHelper.class_eval do
      define_method(:rubygem_push) do |path|
        sh("gem inabox '#{path}' -g #{host}")
        Bundler.ui.confirm "Pushed #{name} #{version} to #{host}"
      end
    end
  end
end
