pragma solidity ^0.8.0;
contract OlderSemanticVersion
{
     uint d;
     bool initialized;
     constructor() {

         initialized = true;
     }
     function doThat() public {
         if (initialized) {
             d++;
             d = d * d;
         } else {
             initialized = true;
         }
     }
}
