pragma solidity ^0.8.0;
contract Solidity {
    uint i = 50;
    address owner;
    constructor () {
        owner = msg.sender;
    }
    modifier isOwner() {
        require(owner == msg.sender, "Not Owner");
        _;
    }
    function setI(uint newI) public isOwner {
        i = newI;
    }
     function getI() public view returns (uint) {
        return i;
    }
    function increment() public {
        setI(getI() + 1);
    }
}
