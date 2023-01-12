local Data = {
    Message = Instance.new("Message", workspace),
    Text = {"Join the largest library of serversides, Blood Gang™, Inc", "discord.gg/RurmepC9Nr"}
}
return function()
    Data.Message.Text = Data.Text[1]
    wait(6)
    Data.Message.Text = Data.Text[2]
    wait(40)
    Data.Message:Destroy()
end