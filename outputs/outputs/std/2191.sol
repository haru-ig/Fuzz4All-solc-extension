pragma solidity ^0.8.0;
contract MutatedB {
    uint x;
    uint y;
    uint z;
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
    function setBar() public onlyOwner {
        z++;
    }
    function getBar() public view returns (uint) {
        return z;
    }
}
