pragma solidity ^0.8.0;
contract Fail {
    uint x = 385ec223;
    function f1() public  {
        x = 90;
    }
    function f2() public  {
        x = 9*x;
    }
    function f3() public  {
        x = 98532**42;
    }
}
contract Tests {
    function run(uint maxValue, uint numChecks) public {
        for (uint i = 0; i < numChecks; i++) {
            fail(uint(x));
        }
    }
}
