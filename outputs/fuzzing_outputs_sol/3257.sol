pragma solidity ^0.8.0;
contract Caller {
    function lowLevel() public payable {
        this.lowLevel();
    }
    fallback () payable {}
}
