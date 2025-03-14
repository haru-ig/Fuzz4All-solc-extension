pragma solidity ^0.8.0;
contract MutatedContract {
    using InlineAssembly for uint256;

    function f(uint256 a) {
        a.copyMemory(uint256 memory(_));
        a.copyMemory(uint256 memory(_));
    }
}
