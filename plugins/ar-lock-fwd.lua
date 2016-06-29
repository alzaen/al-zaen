--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY ahmed_al_zaen                ▀▄ ▄▀ 
▀▄ ▄▀   BY ahmed_al_zaen (@ahmed_al_zaen)      ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY ahmed_al_zaen      ▀▄ ▄▀   
▀▄ ▄▀   ANTI FWD  :  منع اعاده توجيه           ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do

local function pre_process(msg)
    
    --Checking mute
    local hash = 'mate:'..msg.to.id
    if redis:get(hash) and msg.fwd_from and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg)  then
            delete_msg(msg.id, ok_cb, true)
            send_large_msg(get_receiver(msg), 'تـحـذيـر '..msg.from.first_name..'\nممنوع اعاده توجيه في المجموعه👋👮\n اسم المستخدم🖐 @'..msg.from.username)
            return "done"
        end
    
        return msg
    end

  


local function run(msg, matches)
    chat_id =  msg.to.id
    
    if is_momod(msg) and matches[1] == 'قفل اعاده توجيه' then
      
            
                    local hash = 'mate:'..msg.to.id
                    redis:set(hash, true)
          return 'تم قفل اعاده التوجيه في المجموعه🔐\n👮 الامر بواسطة :️ @'..msg.from.username 
  elseif is_momod(msg) and matches[1] == 'فتح اعاده توجيه' then
      local hash = 'mate:'..msg.to.id
      redis:del(hash)
					return 'تم فتح اعاده التوجيه في المجموعه🔓\n👮 الامر بواسطة :️ @'..msg.from.username
end

end

return {
    patterns = {
        '^(قفل اعاده توجيه)$',
        '^(فتح اعاده توجيه)$'
    },
    run = run,
    pre_process = pre_process
}
end
