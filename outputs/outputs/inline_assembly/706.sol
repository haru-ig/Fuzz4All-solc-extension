pragma solidity ^0.8.0;
contract Mutator1 {
 function testFunction() public {
     bool boolVar = true;
 if (uint256(boolVar)+1 > 55) {
     require(true, "must be more than 55");
 }
}
}

pragma solidity ^0.8.0;
contract Mutator2 {
 function testFunction() public {
     bool boolVar = true;
 boolVar += 1;
 require(boolVar > 55, "must be more than 55");
 }
}
