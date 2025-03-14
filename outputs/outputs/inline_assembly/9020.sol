pragma solidity ^0.8.0;
contract MutatedSolidity5
{
    enum Colour {Red, Orange, Yellow, Green, Blue, Indigo, Violet};
    enum MyInt {NegativeOne, One, NegativeTwo, Two, NegativeThree, Three, NegativeFour, Four, NegativeFive, Five, NegativeSix, Six, NegativeSeven, Seven, NegativeEight, Eight, NegativeNine, Nine, NegativeTen, Ten, NegativeEleven, Eleven, NegativeTwelve, Twelve, NegativeThirteen, Thirteen, NegativeFourteen, Fourteen, NegativeFifteen, Fifteen, NegativeSixteen, Sixteen, NegativeSeventeen, Seventeen, NegativeEighteen, Eighteen, NegativeNineteen, Nineteen};
    uint8 private _b;

    event MyEvent(uint64 v);
    constructor() public
    {
        _b = 5;
    }
    function add() public
    {
        _b += 2;
        _b -= 3;
        _b *= 4;
        _b /= 5;
        emit MyEvent(1);
    }
    function addColour(Colour c) public
    {
        _b += 2;
        _b -= 3;
        _b *= 4;
        _b /= 5;
        emit MyEvent2(c);
        _b == _b;
    }
    function sub() public
    {
        _b += 2;
        _b /= 5;
        _b %= 10000000000;
        emit MyEvent(3);
    }
}
