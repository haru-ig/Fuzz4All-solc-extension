pragma solidity ^0.8.0;
contract AWalletInterface {
    function transferNative(
        uint8 amount, uint value, uint valueDenom) public;
}
