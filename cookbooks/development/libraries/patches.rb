class ::Chef::Provider::Package::Apt
  def run_noninteractive(command)
    # There are some migthy big packages in this recipe, and 600s is just not enough!
    shell_out!(command, :env => { "DEBIAN_FRONTEND" => "noninteractive", "LC_ALL" => nil }, :log_level => :info, :timeout => 1200)
  end
end

