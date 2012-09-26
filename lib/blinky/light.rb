module Blinky
  class Light
    
    def initialize device, recipe, plugins
        @handle = device.open
        begin
          @handle.usb_detach_kernel_driver_np(0)
        rescue LIBUSB::ERROR_NOT_FOUND
          # Already detached
        end
        @handle.set_configuration(device.configurations.first)
	@handle.usb_claim_interface(0)
        self.extend(recipe)   
        plugins.each do |plugin|
            self.extend(plugin)
        end          
    end
    
    def where_are_you?
      5.times do
        failure!
        sleep(0.5)
        success!
        sleep(0.5)
      end
      off!      
    end
    
  end
end
