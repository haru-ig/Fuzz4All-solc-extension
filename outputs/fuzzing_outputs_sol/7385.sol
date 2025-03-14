pragma solidity ^0.8.0;
contract MutateExample2 {
    uint8 public value;
    constructor() {
        value = 25;
    }
    function callMutatedExample2()
        public
        payable
        pure
        returns (uint8)
    {
        return value;
    }
}
