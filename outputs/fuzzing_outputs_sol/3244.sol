pragma solidity ^0.8.0;
contract Caller {
    function highLevel() public payable {
        this.highLevel();
    }
}
