pragma solidity ^0.8.0;
contract SemanticallyEquivalent5 {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint256 h) {
    _h = 10;
    return uint(
      (
        constantValue
      )
    );
  }
}



contract SemanticallyEquivalent3 {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint256 h) {
    h = _h;
    return uint(
      (
        constantValue
      )
    );
  }
  modifier only() {
    _;
  }
  function a1() public only {
    uint256 _h = constantValue;
    uint value = uint(
      (
        constantValue
      )
    );
    address _to = msg.sender;
    bytes memory _data = abi.encodePacked(uint(constantValue));
    bytes calldata _data2;
  }
  modifier a2() {
    _;
  }
  function a2() public a2 {
    uint256 _h = constantValue;
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent2 {
  uint h1;
  address payable payableAddress;
  address payable _sender;
  uint256 public constant constantValue = 1000;
  constructor () {
    uint256 _h1 = uint256(
      ((msg.value
