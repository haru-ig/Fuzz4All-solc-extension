pragma solidity ^0.8.0;
contract NewSemanticVersion
{
     uint d;
     bool isInitialized;
     constructor() {
         isInitialized = true;
     }
     function doThat() public {
         if (isInitialized) {
             d++;
             d = d * d;
         } else {
             isInitialized = true;
         }
     }
}
