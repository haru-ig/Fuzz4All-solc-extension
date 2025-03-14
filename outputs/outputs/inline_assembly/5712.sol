pragma solidity ^0.8.0;
```
pragma solidity >=0.4.6 <=0.6.11;


contract SolidityInInlineAssemblyExample {

   function returnsFunctionWithInlineAssembly() internal pure returns (uint64 ret) {
          byte[] encodedCalldata = "42".0;
          uint256 value = keccak256(abi.encodePacked(encodedCalldata));
          ret = 5291 + value;
          return(ret);
  }
 }
