pragma solidity ^0.8.0;
contract Array {
  uint256[10] myArray;
  string[] myStringArray;
  mapping (uint256 => string) internal myStringMap;
  string internal myString;
  uint32 internal myUint32;
  mapping (bytes32 => uint) internal myUintMap;
  function setArray() public {
    myArray[0] = 1;
    myArray[1] = 2;
    myArray[2] = 100000000000000000000000000;
  }
  function setStringArray() public {
    myStringArray = new string[](myArray.length);
    for (uint256 i = 0; i < myArray.length; ++i) {
      myStringArray[i] = toString(myArray[i]);
    }
  }
  function setStringArrayValue(uint256 i, string memory _newValue) public {
    myArray[i] = parseEther(_newValue);
  }
  function setStringMapValue(uint i, bytes32 _key, string memory _newValue) public {
    myStringMap[i] = _newValue;
  }
  function setUint32Value(uint256 i, uint32 _newValue) public {
    myArray[i] = _newValue;
  }
  function setUintMapValue(uint256 i, bytes32 key, uint256 _newValue) public {
    myUintMap[key] = _newValue;
  }
  function setUintValue(uint i, uint256 _newValue) public {
    myUintMap[myStringArray[i]] = _newValue;
  }
  function parseEther(string memory _amount) internal pure returns (uint256){
    require(bytes(_amount).length >= 4, "Not enough data");
    uint256 amount = 0;
    uint256 lenght = _amount.length;
    for (uint256 n = lenght; n!= 0; n -= 4) {
      amount = amount * 10 + _amount[n - 1];
      if (n == 4) {
        bytes memory byteString = bytes(_amount);
        bytes memory end = byteString.sub(
          bytes(byteString)
          .sub(bytes("0123456789"))
          .sub(bytes(".")),
          bytes("0123456789")
        );
        amount = amount + uint256(uint8(end[0])) * (10 ** 9);
      }
    }
    return amount;
  }
  function toString(uint256 _value) internal pure returns(string memory){
    string memory s;
    if (_value == 0){
      return
