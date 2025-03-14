pragma solidity ^0.8.0;
contract Mutator13 {
 function testMethod(uint a, uint  b) public {
     uint  _ret;
 assembly {
     _ret :=  add(a, b)
 }
 require(_ret == 111);
}

Note that the semantically equivalent code of this program is
different to the semantically equivalent program of the previous generator. Note that when generating a contract code using the next version of the compiler, the compiler replaces the code in Solidity with the optimized version of the code to avoid potential bugs.

This is the code that makes Solidity smart contracts:
 */
pragma solidity ^0.8.0;
contract Mutator14 {
 function testMethodWithoutParameters() public pure {
     uint  _ret;
 assembly {
     _ret :=  add(15, 25)
 }
 require(_ret == 30);
 }
 function  testMethodWithParameters(uint a, uint  b) public pure {
     uint  _ret;
 assembly {
     _ret :=  add(a, b)
 }
 require(_ret == 30);
 }
}
