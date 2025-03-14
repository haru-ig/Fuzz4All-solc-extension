pragma solidity ^0.8.0;
contract Mutation {
    modifier canCall(address receiver) {
        require(msg.value >= 500000000000000, "Insufficient amount.");
        _;
    }
    function lowLevel() public onlyOwner returns (uint) {
        this.highLevel();
        return 0;
    }
}
