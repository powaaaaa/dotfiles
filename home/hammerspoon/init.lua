local open_terminal = function()
    local appName = "Warp"
    local app = hs.application.get(appName)

    if app == nil or app:isHidden() or not(app:isFrontmost()) then
        hs.application.launchOrFocus(appName)
    else
        app:hide()
    end
end
-- 「Ctrl+space」のショートカットで表示／非表示を切り替える場合の設定
hs.hotkey.bind({"option"}, "space", open_terminal)
