pragma solidity ^0.8.0;
contract Caller {
    uint public x = 2;
    function highLevel() public payable returns (uint) {
        x++;
        x += 2;
        return x;
    }
}
