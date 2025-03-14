pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract SemanticallyEquivalentCompiler {
    struct MemoryData {
        uint256 public result;
        uint256 private variable;
    }

    function test_()
        returns(uint256 privateVariable, uint256 publicVariable)
    {
      uint256 publicVariable = 1;
      uint256 privateVariable = 2;
      return (publicVariable, privateVariable);
    }
    function test___( )
        returns(uint256, uint256)
    {
      uint256 publicVariable = 1;
      uint256 privateVariable = 2;
      return (publicVariable, privateVariable);
    }
    function test___0( )
        returns (uint256 publicVariable, uint256 privateVariable)
    {
      publicVariable =
