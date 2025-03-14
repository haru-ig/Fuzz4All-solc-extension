pragma solidity ^0.8.0;
contract ImmutableS {
    uint x;
    uint y;
    constructor(){
        x = 1;
        y = 2;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setFoo() public onlyOwner {
        x++;
        y++;
    }
    function getFoo() public view returns (uint) {
        return x;
    }
}
