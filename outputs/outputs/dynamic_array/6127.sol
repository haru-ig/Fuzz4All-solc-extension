pragma solidity ^0.8.0;
contract Test30005 {
    enum Mood { Normal, Affectionate, Happy }
    struct Rhythm {
        int timeOfChange;
        int duration;
        Mood mood;
    }
    uint32 a;
    constructor (int b) public {
        a = b;
    }
    event Emitr1 ();
    event Emitr2 ();
    event Emitr3 ();
    function GetMood() public view returns (Mood){
        return Mood(a);
    }
    function SetMood(Mood b) public {
        a = int(b);
    }
    function GetMoodAsNum(Mood b) public pure returns (int) {
        switch(b) {
            case Mood.Normal:
                return 1;
            case Mood.Affectionate:
                return 2;
            case Mood.Happy:
                return 3;
            default:
                return 4;
        }
    }
    function SetMoodAsNum(Mood b, int c) public {
        a = bool(a == int(b))? c : 88;
    }
    event Emitr4 ();
    function GetValueOfB() public view returns (int){
        return (int(GetMood()));
    }
    function SetValueOfB(int b) public {
        SetMood(Mood(b));
    }
    event Emitr5 ();
    function GetDurAndTic(out Rhythm memory){
        Rhythm memory rhythm;
        rhythm.timeOfChange = Now();
        rhythm.duration = 1000;
        rhythm.mood = GetMood();
        Emitr5();
    }
    event Emitr6 (Rhythm memory);
    function GetTimeOfChange() public view returns (uint32) {
        return 1;
    }
    event Emitr7 (int);
    function GetLengthOfTime(int a) public pure returns (uint32){
        return uint32((Now()
