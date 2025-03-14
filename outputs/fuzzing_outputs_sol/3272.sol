pragma solidity ^0.8.0;
contract Caller {
    uint public x = 3;
    function highLevel() public payable returns (uint) {
        if (x == 2) {
            x = 1;
            return x;
        }
        x = 10;
        x += 10;
        x = x / 10;
        x += 3;
        return x;
    }
}
