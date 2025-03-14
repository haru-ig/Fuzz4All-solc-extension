pragma solidity ^0.8.0;
contract Caller {
    function call(Mutated memory) public pure {
        (address myAddress, address fallbackAddress) =
            address.call(bytes4(0x0));
        (Mutated memory myMemory, address myAddress2, address fallbackAddress2) =
            address.call(bytes4(0x0));
    }
}
