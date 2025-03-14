pragma solidity ^0.8.0;
contract ComplexMutation11 {
    function fallback() pure public {
        this.caller(uint8(abi.decode(tx.data, bytes)));
    }
}
