pragma solidity ^0.8.0;
contract SemanticMutation9
{
    uint public constant value2 = 3;
    uint public constant value1 = 128;
    function a() public pure {}
    function b()
        public
        pure
        returns
        (
            uint
        )
    {
        return 334;
    }
    function c()
        public
        pure
        returns
        (
            uint
        )
    {
        return value1 + value2;
    }
}
pragma solidity 0.4.25;
contract SemanticMutation01
{
    uint public myVar;
    function c() public{
        myVar = 5;
    }
}
contract SemanticMutation02
{
    uint public myVar;
    function c() public{
        myVar /= 5;
    }
}
 contract SemanticMutation03
 {
    function c() public pure returns (uint value)
    {

        if (myVar == 1) {
            value=1;
        }

        if (myVar == 0) {
            value *= 10;
            value += 100;
        }
    }
}
contract SemanticMutation04
{
    function c() public pure
    {
        myVar = 7;
    }
}
contract SemanticMutation05
{
    function c() public pure returns(uint value)
    {
        if (myVar == 1)
        {
            value = 1 + 3;
        }
        else
        {
            value = 1;
        }
    }
}
contract SemanticMutation06
{
    function f() public pure
    {
        var j = 7;
        uint k = myVar;
        myVar = 7;
        myVar /= 2;
    }
}
contract SemanticMutation07
{
    function c() public
    {
        myVar /= 7;
    }
}
contract SemanticMutation08
{
    function f() public pure {
        myVar += myVar;
    }
    function g() public pure {
        myVar--;
    }
    function h() public pure {
        myVar = myVar << 1;
    }
    function i() public pure
    {
        uint j = 7;
        myVar /= 7;
    }
}
contract SemanticMutation09
{
    function g() public pure {
        int8 i = 7;
        myVar += myVar;
    }

    function h() public pure {
        uint8 j = 7;
        myVar--;
    }
}
contract SemanticMutation10
{
    function f() public pure
    {
        myVar += 3;
    }
