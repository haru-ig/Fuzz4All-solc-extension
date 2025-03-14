pragma solidity ^0.8.0;
contract MutatedFunction {
    modifier hasModifier(uint16 x) {
        x;
        _;
    }

    function doNothing() public {
        uint16 _;
    }

    function mutate() public hasModifier(123+2) {
        doNothing();
    }
}
