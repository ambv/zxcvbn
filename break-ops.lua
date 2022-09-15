-- break ops
--
--
-- llllllll.co/t/lightsout
--
--
--
--    ▼ instructions below ▼


grid__=include("lib/ggrid")
MusicUtil = require "musicutil"
lattice=require("lattice")

function init()
  grid_=grid__:new()

  -- start lattice
  local sequencer=lattice:new{
    ppqn=96
  }
  divisions={1/2,1/4,1/8,1/16,1/2,1/4,1/8,1/16,1/2,1/4,1/8,1/16,1/2,1/4,1/8,1/16}
  for i=1,16 do 
    local step=0
    sequencer:new_pattern({
      action=function(t)
        step=step+1
      end,
      division=divisions[i],
    })
  end
  sequencer:hard_restart()

end


function enc(k,d)

end

function key(k,z)

end

function redraw()
  screen.clear()
  screen.move(32,64)
  screen.text("break ops")

  screen.update()
end

function rerun()
  norns.script.load(norns.state.script)
end
