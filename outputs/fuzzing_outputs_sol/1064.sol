pragma solidity ^0.8.0;
contract MutatedContract {
   constructor() {
        uint x;
        x **= 3;
        x **= 2;
    }
}

pragma solidity ^0.8.0;
contract UndefinedFallback {
    constructor() {}
    function undefined() public payable {}
    function callUndefined() public returns (uint a, uint b) {
        a = undefined();
        b = undefined();
    }
}
contract UndefinedFallbackContract is UndefinedFallback {
    function callUndefined() public returns (uint a, uint b) {
        a = undefined();
        b = contractFallbackContract.fallback();
    }
}
