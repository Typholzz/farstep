$execute if data storage farstep:network rename.drafts[{viewer:$(viewer),id:$(id),text:""}] if data storage farstep:network rename.write.player{key:" "} run return 0
$data modify storage farstep:network rename.drafts[{viewer:$(viewer),id:$(id)}].text set value "$(text)$(key)"
