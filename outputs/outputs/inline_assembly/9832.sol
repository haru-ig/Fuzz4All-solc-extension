pragma solidity ^0.8.0;
contract InvariantsEquallyXulContract {
    constructor () {
    }
    function e(uint y, uint x) public {
        uint yEqX;
        uint xEqY;
        uint xEqYTimesTwo;
        uint yEqTwoXeqX;
        uint firstInequality;
        uint equalityBetweenTwoXeqX;
        if (x == x)
            return;
        else
            yEqX = y;
        yEqY = 0;
        yEqTwoXeqX = 0;
        xEqYTimesTwo = 0;
        yEqTwoXeqX = x;
        xEqYTimesTwo = 2 * x;
        lastInequality;
        equalityBetweenTwoXeqX = x == x;
        if(firstInequality == secondInequality && firstInequality!= thirdInequality && thirdInequality == x)
            return;
    }
    function f(uint x) public pure {
        if(x == x)
            return;
    }
    function lastInequality() public pure {
        asm {
            inequality();
        }
    }
    function inequality() public pure {
        uint n = uint(-32767);
        bool result = n == x;
    }
}
contract InvariantsUnequalXulContract {
    constructor () {
    }
    function g(uint x, uint y) public pure {
        a(x, y);
    }
    function a(uint x, uint y) public pure {
        if (x == x)
            return;
    }
}
