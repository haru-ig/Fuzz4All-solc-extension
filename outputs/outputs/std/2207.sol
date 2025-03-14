pragma solidity ^0.8.0;
contract MutatedS is MutatedS {
    uint z;
    constructor() {
        z = 3;
    }
    modifier onlyOwner {
        super.onlyOwner;
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function getFoo() public view returns (uint) {
        return super.getFoo();
    }
    function setFoo() public onlyOwner {
        x = 1;
        return;
    }
}
