pragma solidity ^0.8.0;
contract Example18 {
    function createCaller() public pure returns (Example17) {
        return new Example17;
    }
}


pragma solidity ^0.8.0;
contract Example19 {
    mapping(address => bool) exists;
    address pub owner;
    address pub otherOwner;
    constructor() {
        owner = msg.sender;
        otherOwner = 0xCfB226539F9F2FFB5A9c04139b386fEb15B6d268;
    }
    modifier OnlyOwn() {
        require(msg.sender == owner);
        _;
    }
    modifier OnlyOtherOwner() {
        require(msg.sender == otherOwner);
        _;
    }
    function withdraw() public OnlyOwn {
        msg.sender.transfer(address(this).balance);
        exists[msg.sender] = false;
    }
}
