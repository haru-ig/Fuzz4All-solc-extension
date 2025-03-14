pragma solidity ^0.8.0;
contract Mutability4 {
  uint8 value;
  uint256 constant ZERO = 0;
  constructor () {
    value = 256;
  }
  function getV () public pure returns (uint256) {
    return value;
  }
  function setV (uint256 _value) public pure {
    value = _value;
  }
  function inc () public {
    value++;
  }
}
pragma solidity ^0.8.0;
contract Mutability5 {
  uint8 internal constant ZERO = 0;
  uint8 internal value;
  constructor () {
    value = ZERO;
  }
  function getV () public pure returns (uint8) {
    return value;
  }
  function setV (uint8 _value) public pure {
    value = _value;
  }
  function setZero () public {
    value = ZERO;
  }
  function setThree () public {
    value++;
  }
  function setFour () public {
    value = 4;
  }
}
pragma solidity ^0.8.0;
contract Mutability6 {
  uint internal constant ZERO = 0;
  uint8 value;
  uint internal constant SIXTY_EIGHT = 68;
  uint constant EIGHT = 8;
  constructor () {
    value = ZERO;
  }
  function getV () public view returns (uint8) {
    return value;
  }
  function setV () public {
    value++;
  }
  function setV (uint256 _value) public {
    value = _value;
  }
  function setV (string calldata _value) public {
    value = _value;
  }
  function setV (bool _value) public {
    value = _value;
  }
  function setV (bytes memory _value) public {
    value = _value;
  }
  function setV (address _value) public {
    value = _value;
  }
  function setV (uint256 _value) public {
    value = _value;
  }
  function setV (address payable _value) public {
    value = _value;
  }
  function setV (uint8 _value) public {
    value = _value;
  }
  function setV (uint16 _value) public {
    value = _value;
  }
}
pragma solidity ^0.8.0;
contract Mutability7 {
