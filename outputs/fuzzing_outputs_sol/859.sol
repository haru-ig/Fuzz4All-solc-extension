pragma solidity ^0.8.0;
contract AddressReturn {
  bytes32 myData;
  mapping(uint256=>bytes32) public myDataMapping;
  address payable public myDataAddress;
}

contract B {
  constructor (bytes32 _myData) {
    myData = _myData;
    myDataMapping[0] = _myData;
    myDataAddress = payable(address(this));
  }

  function getMyData() public view returns (bytes32) { return myData; }
  function getMyDataMapping(uint256 i) public view returns (bytes32) { return myDataMapping[i]; }
  function getMyDataAddress() public view returns (address payable) { return myDataAddress; }
  function getNonRevertAddress() public pure returns (address payable) {
    return address(new AddressReturn());
  }
}
