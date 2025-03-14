pragma solidity ^0.8.0;
contract OlderSemanticVersion
{
     uint d;
     bool initialized;
     constructor() {
         initialized = true;
     }
     function doThat() public {
         revert(abi.encodeWithSignature("d = 1"));
     }
}
