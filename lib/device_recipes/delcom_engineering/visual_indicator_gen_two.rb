module Blinky
  module DelcomEngineering
    module VisualIndicator
      module GenerationII

        def success!
          off! 
          set_colour("\x01") 
        end

        def failure!  
          off!
          set_colour("\x02") 
        end

        def building!
          off!  
          set_colour("\x04")
        end

        def warning!
          off!
          set_colour("\x06")
        end

        def off!
          set_colour("\x00")  
        end

        def init
        end

        private
        def set_colour colour
          intensity = "\x0A" # 10%
          #intensity = "\x64" # 100%
          @handle.usb_control_msg(0x21, 0x09, 0x0635, 0x000, "\x65\x22\x00#{intensity}\x00\x00\x00\x00", 0)
          @handle.usb_control_msg(0x21, 0x09, 0x0635, 0x000, "\x65\x22\x01#{intensity}\x00\x00\x00\x00", 0)
          @handle.usb_control_msg(0x21, 0x09, 0x0635, 0x000, "\x65\x22\x02#{intensity}\x00\x00\x00\x00", 0)
          @handle.usb_control_msg(0x21, 0x09, 0x0635, 0x000, "\x65\x0C#{colour}\xFF\x00\x00\x00\x00", 0)
        end
      end
    end
  end
end
