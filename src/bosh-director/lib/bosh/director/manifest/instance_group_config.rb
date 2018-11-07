module Bosh::Director
  class InstanceGroupConfig
    include ValidationHelper

    def initialize(hash)
      @hash = hash
    end

    def lifecycle
      safe_property(
        @hash,
        'lifecycle',
        class: String,
        optional: true,
        default: Bosh::Director::DeploymentPlan::InstanceGroup::DEFAULT_LIFECYCLE_PROFILE,
      )
    end
  end
end
