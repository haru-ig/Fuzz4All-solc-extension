pragma solidity ^0.8.0;
contract MutatedSemanticsFallback1
{
    uint256 public value;
    bytes32 myMethod;
    function set(uint256 _v) public { value = _v; }
    function fallback() public pure { revert(_myMethod()); }
    bytes32 _myMethod() internal pure returns(bytes32) { return 4; }
}
