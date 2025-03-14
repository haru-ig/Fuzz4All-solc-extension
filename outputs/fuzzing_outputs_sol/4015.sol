pragma solidity ^0.8.0;
contract MutantCallerFallback {
  uint256 private _myStorage;

  function myReceive(address sender, uint256 value) public payable {
    bytes memory data = new bytes(4);
    uint256 size = 32;
    uint256 offset = 0;
    assembly {
      store32(offset, size)
    }
    (success, retval,, ) = address(bytes(msg.data)).call{value: value, data: data};
    require(success);
    require(keccak256(bytes(retval))!= keccak256(bytes(data)));
  }

  function myReturn(uint256 v) public returns (uint256 r) {
    _myStorage = v;
    return v;
  }

  function getMyStorage() public view returns (uint256 r) {
    return _myStorage;
  }
}
