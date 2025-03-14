pragma solidity ^0.8.0;
contract MutatedComplexFallbackCaller {
    uint internal x;
    function mutatedFallback(uint z) public {
        require (z == 0 || msg.value == 0, "Not a zero or non-zero value.");
        uint zOld = x;
        require (msg.value == 0 || z == zOld, "Wrong result of x = z.");
        x = z;
    }
}
