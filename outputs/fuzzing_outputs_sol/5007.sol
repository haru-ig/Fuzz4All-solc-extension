pragma solidity ^0.8.0;
contract FallbackMut {
    address private _fallbackAddress;

    constructor(address addr) {
        _fallbackAddress = addr;
    }

    function fallback() public pure {
        if (blockhash(0)!= keccak256(abi.encodePacked(block.coinbase, block.timestamp))) {
            address(uint160(_fallbackAddress)).transfer(msg.value);
            throw;
        }
        revert("Fallback has not been called.");
    }
}
