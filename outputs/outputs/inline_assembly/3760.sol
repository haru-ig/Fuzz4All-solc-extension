pragma solidity ^0.8.0;
contract SemanticallyEquivalent1 {
  address _address;
  constructor(string memory a, string memory b, address _address) public {
    _address = _address;
  }
  function x() public view returns (string memory) {
    bytes memory bytesForAddress = abi.encode(_address);
    string memory addrString = abi.decode(bytesForAddress, (string));
    return addrString;
  }
  function x3() external {
    bytes memory bytesForAddress = abi.encode(_address);
    string memory addrString = abi.decode(bytesForAddress, (string));
    _address = address(uint256(uint256(bytesForAddress[0]) << 32) | uint256([bytesForAddress[1], bytesForAddress[1], bytesForAddress[1], bytesForAddress[2]])));
  }
}
