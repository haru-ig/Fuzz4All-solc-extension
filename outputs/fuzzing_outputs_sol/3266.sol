pragma solidity ^0.8.0;
contract BetterCaller {
    uint public x = 2;
    function highLevel() public payable returns (uint) {
        x++;
        x--;
        return x;
    }
}
