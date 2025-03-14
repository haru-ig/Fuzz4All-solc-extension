pragma solidity ^0.8.0;
contract SemanticMutation15
{
    constructor() public
    {
        SemanticMutation14 p = new SemanticMutation14();
        SemanticMutation14 s = p;
        uint256 d = 0;
    }
    function getBoolAndInt() public pure
    {
        int256 a = 52;
        uint256 d = -52;
        uint256 b = 72;
        while (a <= 45)
        {

            assert(b+72 >= a);
            a = 50;
            b++;
            a++;
        }
    }
    function getTrueByBool() public pure
    {
        bool b = true;
    }
    function getFalseByKey() public pure
    {
        bool b = false;
    }
    function getZero() public pure
    {
        bool b = false;
        bool c = true;
        uint8 d;
        d == 0;
        bool d1 = 1 >= 0;
    }
    function getMin() public pure
    {
        uint8 d;
        uint8 e;
        e = d | 0;
        uint160 f = 0xff6796cc77e655ea774ae937ec8279ef59d53fc;
    }
    function notZero() public pure
    {
        uint160 f = 0xff6796cc77e655ea774ae937ec8279ef59d53fc;
        uint256 h = 0xffffff;
        bool h = 0 < h;
    }
}
