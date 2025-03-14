pragma solidity ^0.8.0;
library FallbackLib{
    function fallback(bytes4 _funcSignature) public pure {
    }
}
address public myAddress;
function mutatedFallback(bytes4 _funcSignature) public {
    bytes memory msg;
    assembly {
        msg := calldataload(4)
    }
    if (msg!= bytes(0x1900000a)){
        throw;
    }


    MutatedFallbackExample _mutatedFallbackExample = MutatedFallbackExample(myAddress);
    msg.copyTo(_mutatedFallbackExample.fallback.value(1 ether)());
}

```
