pragma solidity ^0.8.0;
contract LowLevelCaller {
    uint public x;
    function lowLevel(uint a) public {
        x = a;
    }
    function highLevel() public {
        x = 2 * x+ 2;
    }
}
