pragma solidity ^0.8.0;
contract Mutator10 {
 function testMethod(uint a, bytes32 b) public  {
     bool boolVar = true;
 assembly {
 sstore(boolVar, add(boolVar, 1))
 }
 require(a > 55, "must be more than 55");
}
}

pragma solidity ^0.8.0;
contract Unobtrusive {


    function testMethod(uint a, bytes32 b) public {





    bytes32 constant val = bytes32(uint(uint64(a)/2+1));






    }




}
