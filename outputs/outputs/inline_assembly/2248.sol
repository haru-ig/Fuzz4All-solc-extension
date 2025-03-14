pragma solidity ^0.8.0;
contract AnotherOlderSemanticVersion
{
     uint e;
     bool initialized;
     mapping(uint => uint) m;
     constructor() {
         initialized = true;
     }
     function doThat() public {
         if (initialized) {
             e++;
             m[e] = m[e] * 2;
         } else {
             initialized = true;
         }
     }
}
