pragma solidity ^0.8.0;
contract MutateWipeBc6 {
    uint x;
    function wipe() public pure {
        x = 1;
        x;
    }
}
contract MutateWipeBc7 {
    function wipe() public pure {
        uint var0 = 1;
        (var0);
    }
}
