pragma solidity ^0.8.0;
contract A {
    address public _owner;
    uint8 private _number;
    constructor() {
      assembly {
        mstore(0x1, 1)
      }
    }
    function _incrementNumberA() internal {
      _number += 1;
    }
    function setOwner(address _newOwner) public onlyOwner {
        require(address(this)!= _newOwner, "Cannot set this as the owner.");
        _owner = _newOwner;
    }
    function owner() public view returns (address _owner) {
        return _owner;
    }
    function numberOfOwnerBCalls() public view returns (uint256) {
        return _number;
    }
}
