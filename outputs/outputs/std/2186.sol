pragma solidity ^0.8.0;
address payable owner;
contract MutatedC {
    uint public x;
    uint public y;
    constructor() {
        owner = msg.sender;
        x = 0;
        y = 0;
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
    fallback() external pure {
        if (type(msg.data)!= address(0)) assembly {
            revert(0, 0)
        }
    }
}
