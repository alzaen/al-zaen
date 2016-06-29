--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                      ▀▄ ▄▀ 
      by member oscar team @ahmed_al_zaen 
    -----OSCAR TEAM 
      please join to Channel Oscar Team @ahmed_al_zaen
    Plugin ; lock audio with warn 
    tnx @ahmed_al_zaen for help :)

▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]] 
do 

local function pre_process(msg) 
local monster = msg['id'] 
    local oscar = 'mate:'..msg.to.id 
    if redis:get(oscar) and msg.media and msg.media.type== "photo" and not is_momod(msg) then 
            delete_msg(msg.id, ok_cb, true) 
            local dea = "تـحـذيـر~{"..msg.from.first_name.."}".."\n".."👿✋ممنوع نشر الصور في المجموعه".."\n".."⭐اسم المستخدم: @"..(msg.from.username or " ") 
reply_msg(monster, dea, ok_cb, true) 
        end 

        return msg 
    end 

local function run(msg, matches) 
local monster = msg['id'] 
    chat_id =  msg.to.id 
    if matches[1] == 'lock' and matches[2] == "photo" and is_momod(msg) then 
                    local oscar = 'mate:'..msg.to.id 
                    redis:set(oscar, true) 
                    local dd = 'تم قفل الصور مع تحذير {✔}😈' 
reply_msg(monster, dd, ok_cb, true) 
elseif matches[1] == 'lock' and matches[2] == 'photo' and not is_momod(msg) then 
local pxpp = 'للمشرفين فقط عزيزي👿' 
reply_msg(monster, pxpp, ok_cb, true) 

    elseif matches[1] == 'unlock' and matches[2] == 'photo' and is_momod(msg) then 
      local oscar = 'mate:'..msg.to.id 
      redis:del(oscar) 
    local gg = ' تم الغاء قفل الصور مع تحذير {❎}😈' 
reply_msg(monster, gg, ok_cb, true) 
elseif matches[1] == 'unlock' and matches[2] == 'photo' and not is_momod(msg) then 
local pxff = 'للمشرفين فقط عزيزي 👿' 
reply_msg(monster, pxff, ok_cb, true) 
end 
end 

return { 
    patterns = { 
        '^[!/#](lock) (.*)$', 
       '^[!/#](unlock) (.*)$' 
    }, 
    run = run, 
    pre_process = pre_process 
} 

-- By @ahmed_al_zaen
--Oscar Team 
end