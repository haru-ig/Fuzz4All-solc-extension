pragma solidity ^0.8.0;
contract MutatedS {
    uint x;
    uint y;
    address owner;
    constructor(){
        owner = msg.sender;
        x = 1;
        y = 2;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setFoo() public {
    x++;
    y++;
    }
    function getFoo() public view returns (uint) {
        return x;
    }
}
# solhint-disable-next-line func-name-mixedcase
contract MutatedC_ {
    constructor() {
    }
    constructor(uint x_) {
    }
    constructor(uint x_, uint y_) {
    }
    constructor(address owner_, uint x_, uint y_) {
        owner = owner_;
    }
