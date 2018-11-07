module Bosh::Director
  class DeploymentConfig
    def initialize(manifest_hash, team_names)
      @manifest_hash = manifest_hash
      @team_names = team_names
      @instance_groups = parse_instance_groups
    end

    def name
      @manifest_hash["name"] || ""
    end

    def team_names
      @team_names
    end

    def parse_instance_groups
      # TODO
    end

    def instance_groups
      @instance_groups
    end

    def has_releases?
      @manifest_hash.key?('releases') && !@manifest_hash['releases'].empty?
    end

    def manifest_hash
      @manifest_hash
    end
  end
end
