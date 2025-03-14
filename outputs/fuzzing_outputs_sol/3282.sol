pragma solidity ^0.8.0;
contract Fallback {
    uint public x = 4;

    function lowLevel() public {
        x--;
    }
    function highLevel() public view returns (uint) {
        x++;
        return x;
    }
}
