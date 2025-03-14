pragma solidity ^0.8.0;
contract Caller2 {
    function lowLevel() public payable pure {
        this.lowLevel();
    }
}
