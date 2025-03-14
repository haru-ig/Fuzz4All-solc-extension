pragma solidity ^0.8.0;
contract SemanticallyEquivalent7 {
  uint public constant _maxValueOf = 1000;
  constructor () {
    uint256 _h = maxValueOf;
  }
  uint256 maxValueOf constant public _maxValueOf = 1000;
  function y() pure public returns (uint256) {
    uint256 _h = uint256(
      (
        _maxValueOf
      )
    );
    return _h;
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent8 {
  uint public constant _maxValueOf = 1000;
  string constant public _nameOf = "MyContract";
  address public constant _recipient = 0xC9A122a6Fd3A4A8f4f625600fA64D3954F7bE3E6;
  constructor () {
  }
  function y() pure public returns (uint256) {
    uint256 _h = uint256(
      (
        _maxValueOf
      )
    );
    return _h;
  }
}
