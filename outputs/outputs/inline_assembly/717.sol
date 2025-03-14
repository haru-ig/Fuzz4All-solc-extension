pragma solidity ^0.8.0;
contract Mutator1 {
 function testMethod(uint a) public {
     uint  test = a;
 assembly {
 a := 0
   a:=add(a,49)
 }
 require(a > test);
}
}
