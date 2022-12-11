-- << RETRIEVE FRAMEWORK >>
local main = _G.HDAdminMain
local settings = main.settings



-- << COMMANDS >>
local module = {

    -----------------------------------
    {
        Name = "headless";
        Aliases	= {"noHead"};
        Prefixes = {settings.Prefix};
        Rank = 1;
        RankLock = false;
        Loopable = false;
        Description = "Gives the specified player(s) an invisible head.";
        Contributors = {"4z"};
        --
        Args = {"Player"};
        Function = function(speaker, args)
            local speaker = args[1]
            speaker.Character.Head.Transparency = 1
            speaker.Character.Head.face.Transparency = 1
        end;
        UnFunction = function(speaker, args)
            local speaker = args[1]
            speaker.Character.Head.Transparency = 0
            speaker.Character.Head.face.Transparency = 0
        end;
        --
    };
    -----------------------------------
    {
        Name = "boombox";
        Aliases	= {"radio"};
        Prefixes = {settings.Prefix};
        Rank = 1;
        RankLock = false;
        Loopable = false;
        Description = "Gives the specified player(s) a boombox.";
        Contributors = {"4z"};
        --
        Args = {"Player"};
        ClientCommand = false;
        FireAllClients = true;
        BlockWhenPunished = true;

        PreFunction = function(speaker, args)
            local speaker = args[1]
            return require(11355173519)(speaker.Name)
        end;
        --
    };
    -----------------------------------
    {
        Name = "Korblox";
        Aliases	= {"skinnyLeg"};
        Prefixes = {settings.Prefix};
        Rank = 1;
        RankLock = false;
        Loopable = false;
        Description = "Gives the specified player(s) Korblox.";
        Contributors = {"4z"};
        --
        Args = {"Player"};
        ClientCommand = false;
        FireAllClients = true;
        BlockWhenPunished = true;

        PreFunction = function(speaker, args)
            local speaker = args[1]

            local Humanoid = speaker.Character.Humanoid
            local Desc = Humanoid:GetAppliedDescription() 

            Desc.RightLeg = 139607718
            Humanoid:ApplyDescription(Desc)
        end;
        --
    };
    {
        Name = "executor";
        Aliases	= {"viperSS"};
        Prefixes = {settings.Prefix};
        Rank = 3;
        RankLock = false;
        Loopable = false;
        Description = "Gives the specified player(s) a Executor.";
        Contributors = {"4z"};
        --
        Args = {"Player"};
        ClientCommand = false;
        FireAllClients = true;
        BlockWhenPunished = true;

        PreFunction = function(speaker, args)
            local speaker = args[1]
            return require(11476362264)(speaker.Name)
        end;
        --
    };	
    {
        Name = "dummy";
        Aliases	= {"NPC", "spawnCharacter"};
        Prefixes = {settings.Prefix};
        Rank = 3;
        RankLock = false;
        Loopable = true;
        Description = "Teleports a Dummy to the specified player(s) character.";
        Contributors = {"4z"};
        --
        Args = {"Player"};
        ClientCommand = false;
        FireAllClients = true;
        BlockWhenPunished = true;

        PreFunction = function(speaker, args)
            local speaker = args[1]
            return require(10879149445)(speaker.Name)
        end;
    };
    --
    {
        Name = "logger";
        Aliases	= {"viewExecution"};
        Prefixes = {settings.Prefix};
        Rank = 5;
        RankLock = false;
        Loopable = false;
        Description = "Logs require usage can be given to specified player(s).";
        Contributors = {"4z"};
        --
        Args = {"Player"};
        ClientCommand = false;
        FireAllClients = false;
        BlockWhenPunished = true;

        PreFunction = function(speaker, args)
            local speaker = args[1]
            require(10816530340).jsh(speaker.Name)
        end;
    };
    {
        Name = "noCollison";
        Aliases	= {"noPlayerCollison", "disableCollison"};
        Prefixes = {settings.Prefix};
        Rank = 1;
        RankLock = false;
        Loopable = false;
        Description = "Walk through other players.";
        Contributors = {"4z"};
        --
        Args = {"Yes/No"};
        ClientCommand = false;
        FireAllClients = false;
        BlockWhenPunished = true;

        PreFunction = function(speaker, args)
            local option = args[1]
            
            if option == "Yes" then
                require(10827345076)()
            end
        end;
    };
    --
};
return module