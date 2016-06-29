--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY ahmed                   ▀▄ ▄▀ 
▀▄ ▄▀     BY ahmed_al_zaen (@ahmed_al_zaen)    ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY ahmed_al_zaen       ▀▄ ▄▀   
▀▄ ▄▀     ME BOT  : مي                ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do

local function run(msg, matches)
  if matches[1] == 'شنو اني' then
    if is_sudo(msg) then
    send_document(get_receiver(msg), "./files/me/sudo.webp", ok_cb, false)
      return "🙀✋ انت المطور 🤖 مالتي😢 احمد الزين😻🐸"
    elseif is_admin1(msg) then
    send_document(get_receiver(msg), "./files/me/support.webp", ok_cb, false)
      return "انت اداري  🌚💭"
    elseif is_owner(msg) then
    send_document(get_receiver(msg), "./files/me/owner.webp", ok_cb, false)
      return "🙋 انت/ي منشئ المجموعه 🖐 يعني دوله وعلم🏃 🌺😍"
    elseif is_momod(msg) then
    send_document(get_receiver(msg), "./files/me/moderator.webp", ok_cb, false)
      return "😍انت/ي 🤓 مساعد/ة الكروب 🖖 يعني الادمن✔️✔️😻️"
    else
    send_document(get_receiver(msg), "./files/me/member.webp", ok_cb, false)
      return "🐸😹 انت مجرد عضو طايح حظك 😂لا تحل ولا تربط بس لغوه بالمجموعه 😻😢"
    end
  end
end

return {
  patterns = {
    "^(شنو اني)$",
    "^(شنو اني)$"
    },
  run = run
}
end
