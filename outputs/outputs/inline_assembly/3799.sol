pragma solidity ^0.8.0;
contract SemanticallyEquivalent7 {
  constructor () {
    uint256 _h = constantValue;
  }
  uint constant constantValue = 1000;
  function x() pure public returns (uint256) {
    uint256 _h = uint256(
      (
        constantValue
      )
    );
    return _h;
  }
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalent8 {
  uint _h;
  constructor () {
    _h = 1000;
  }
  function x() pure public returns (uint256) {
    uint256 _out = uint256(
      (_h)
    );
    return _out;
  }
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalent9 {
  uint _h = 1000;
  constructor () {
    _h += 100;
  }
  function x() pure public returns (uint256) {
    uint256 _out = uint256(
      ($_h)
    );
    return _out;
  }
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalent10 {
  uint _h = 1000;
  constructor () {
    _h += 100;
  }
  function x() pure public returns (uint256) {
    uint256 _out = uint256(
      (_h + 10000)
    );
    return _out;
  }
}
