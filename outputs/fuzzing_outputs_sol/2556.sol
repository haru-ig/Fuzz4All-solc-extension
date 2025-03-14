pragma solidity ^0.8.0;
contract Mutated{
  bytes256 public input;

  struct Struct {

    bytes32 private field2;
  }

  function mutateStruct(Struct storage s) public {
    int intField = s.field2.toSignedInt();
    s.field2 = bytes32(uint128(uint256(intField)) + 1);
  }
}
