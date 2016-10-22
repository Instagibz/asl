state("ShadowWarrior2", "1.1.1.0")
{
    // 1.1.1.0 - 2016-10-15
    bool isGameplay : 0x1811908;
}

state("ShadowWarrior2")
{
    // 1.1.3.0 - 2016-10-22
    bool isGameplay : 0x18189E8;
}

init
{
    version = modules.First().FileVersionInfo.FileVersion;
    // print(version);
}

exit
{
    timer.IsGameTimePaused = true;
}

isLoading
{
    return !current.isGameplay;
}
