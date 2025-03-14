pragma solidity ^0.8.0;
struct StructWithArray {
  uint64[] public values;
}
address payout = address(this);

contract SemanticsEquivalentSolidity {
struct ArrayOfStruct {address[] items; address payoutCaller; int value;}
var myArray = new ArrayOfStruct[](0);
address payoutCaller = payout;

}
