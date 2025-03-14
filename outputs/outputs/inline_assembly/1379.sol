pragma solidity ^0.8.0;
contract Mutant8 {
  uint32 x;
  uint32 value;
  function mutant_1() public {
    x = 1;
    value = 2;
  }
  function mutant_2() public {
    x = 1;
    value = 3;
  }
  function mutant3_1(uint32 _value) public{
    x = _value;
    value = _value;
  }
  function g() public view returns (uint32) {
    return value;
  }
  receive() external payable {}
}
pragma solidity ^0.8.0;
contract Mutant7o {
  uint32 x;
  uint32 value;
  bytes32 xsha;
  bytes32 valuesha;
  function mutant_1_3(uint32 _x) public {
    xsha = bytes32(uint32(keccak256(abi.encodePacked(_x))));
    x = _x;
    valuesha = bytes32(uint32(keccak256(abi.encodePacked(value))));
    value = _x;
  }
  function g() public view returns (uint32) {
    return value;
  }
  receive() external payable {}
}
pragma solidity ^0.8.0;
contract Mutant7l {
  uint32 x;
  uint16 value;
  function mutant_1_3(uint16 _value) public {
    x = 2;
    value = _value;
  }
  function mutant_2() public view returns (uint32) {
    return value;
  }
  function g() public view returns (uint32) {
    return value + 1;
  }
  receive() external payable {}
}
pragma solidity ^0.8.0;
contract Mutant7j {
  uint8 x;
  uint8 value;
  function mutant(uint8 _x) public {
    x = uint8(uint32(_x));
    value = (uint8(_x));
  }
  function mutant_2() public view returns (uint8) {
    return value;
  }
  function g() public view returns (uint32) {
    return (value + 1);
  }
  receive() external payable {}
}
pragma solidity ^0.8.0;
contract Mutant6l {
  uint256 x;
  uint256 value;
  function mutant_1(uint256 _value) public {
    x = _value
