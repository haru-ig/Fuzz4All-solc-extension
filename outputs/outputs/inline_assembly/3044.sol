pragma solidity ^0.8.0;
contract C {
  uint256 constant label=10;
  uint256 internal field=10;
  uint256 constant field2=10;
  uint256 internal constant field4=10;
}
contract C{
    function f() public pure returns (uint256 _x) {
        _x = label;
        return (_x);
    }
}
