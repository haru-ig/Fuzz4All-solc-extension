pragma solidity ^0.8.0;
contract Mutated1b {
    function f(uint x) view returns (uint) {
        return x + 10;
    }
}
contract Mutated2b {
    function f(uint x) view returns (uint) {
        return x * 10 + uint32(10);
    }
}
contract Mutated3b {
    function f(uint x) view returns (uint) {
        return x * 100 + uint160(50);
    }
}
