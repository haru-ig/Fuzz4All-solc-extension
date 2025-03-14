pragma solidity ^0.8.0;
contract SemanticYulContract {
    address private _owner;
    uint internal contractCounter;
    function changeOwner() public {
        _owner = msg.sender;
    }
    function changeStorage() public view returns (uint) {
        return ownerState;
    }
    function add() public {
    contractCounter+=50;
    }
    function subtract(uint x) public pure returns (uint) {
    return 8+x;
    }
    function multiply(uint x) public pure returns (uint) {
    return x*x*x;
    }
function divide(uint x) public pure returns (uint) {
    return x*x*x*x;
}
       function power(uint x) public pure returns (uint) {
 return x*x*x*x*x;
}

contract OwnerWithStorage {
    uint internal storageState = 77;
   bool public writeAccess;
    constructor() {
        writeAccess=true;
    }
    modifier onlyOwner {
        assert((_owner == msg.sender) ) || revert("Onlyowner can change the owner account");
        _;
        ownerState +=  1;
      }
    function getOwner() public view returns (address) {
        return _owner;
    }
    function setStorage(uint x) external onlyOwner {
        ownerState = x;
      }
    function increaseStorage(uint x) external onlyOwner {
        storageState += x;
      }
}






/* 98:28
