pragma solidity ^0.8.0;
contract A {
    modifier onlyOwner() {
        require(msg.sender == owner(), "caller must be the owner");
        _;
    }
    address private owner;
    function setOwner(address _owner) public onlyOwner {
        owner = _owner;
    }
    function owner() public view returns (address) {
        return owner;
    }
}
