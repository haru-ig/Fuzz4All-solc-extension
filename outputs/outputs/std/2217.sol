pragma solidity ^0.8.0;
contract MutationP {
    uint x;
    address owner;
    constructor(){
        owner = msg.sender;
        x = 1;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setBar() public onlyOwner {
        x *= 10;
    }
    function getBar() public view returns (uint256) {
        return x;
    }
}

pragma solidity ^0.8.0;
contract MutationQ {
    uint x;
    address owner;
    constructor(){
        owner = msg.sender;
        x = 1;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setBar() public onlyOwner {
        x += 1;
    }
    function getBar() public view returns (uint256) {
        return x;
    }
}
