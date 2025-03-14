pragma solidity ^0.8.0;
contract MutatedD {
    uint x = 1;
    string y;
    string z;
    constructor(){
        x = 2;
        y = "hello";
        z = "world";
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setBar() public onlyOwner {
        x = 2;
    }
    function getBar() public view returns (string memory) {
        return y;
    }
}
