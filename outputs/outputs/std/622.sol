pragma solidity ^0.8.0;
contract StringSize {
  string constant str = "abc";
  mapping(address => string) public nameToAddress;
  string[] public addresses;
  function len() public view returns (uint256) {
    return uint256(keccak256(abi.encodePacked(nameToAddress[msg.sender])));
  }
  function setAddress(string memory _address, uint _len) public {
    nameToAddress[msg.sender] = _address;
    addresses.push(_address);
    return;
  }
  function getAddress(uint256 i) public view returns (string memory) {
    if (i >= addresses.length) return "";
    return addresses[i];
  }
}
