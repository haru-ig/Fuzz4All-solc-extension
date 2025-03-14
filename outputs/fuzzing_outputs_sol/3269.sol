pragma solidity ^0.8.0;
contract Caller2{
    uint public x = 0;
    function lowLevel() public payable returns (uint) {
        x++;
        x--;
        return x;
    }

    modifier High { x++; x--; return x; }

    function lowLevel2() public High { x++; x--; return x; }
}
