pragma solidity ^0.8.0;
contract Mutator4
{
    uint constant addAmount = 6;
    uint constant increaseAmount = 6;
    uint constant B = 10;
    bool hasOverflow;
    bool hasUnderflow;
    bool hasExceptionalOverflow;
    bool hasExceptionalUnderflow;
    uint amount;


    function test() public {
        amount = B + addAmount - increaseAmount;
    }


    function test2() public {
        hasOverflow = false;
        if (true)
            amount = B + addAmount - increaseAmount;
        hasOverflow = true;
    }


    function test3() public {
        if (true)
            amount = B + addAmount - increaseAmount;
    }


    function test4() public {
        amount = B + addAmount - increaseAmount;
    }


    function test5() public {
        amount = B + addAmount - increaseAmount;
    }


    function test6() public {
        if (B + addAmount - increaseAmount > C)
            C = B + addAmount - increaseAmount;
        C = C + addAmount - increaseAmount;
    }

    function test7() public {
        uint result = bool2uint(true);
        amount = B + addAmount - increaseAmount;
    }

    function test8() public {
        amount = B + addAmount - increaseAmount;
        uint[] memory arr = new uint[](
