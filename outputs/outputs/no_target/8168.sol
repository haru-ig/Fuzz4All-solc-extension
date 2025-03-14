pragma solidity ^0.8.0;
contract Mutated1a {
    uint x = 100;
    function f() view public returns (uint) {
        x = 10 * x;
    }
}
contract Mutated2a {
    uint x = 10;
    function f() view public returns (uint) {
        x = 40 * x;
    }
}
contract Mutated3a {
    uint x = uint160(10);
    function f() view public returns (uint) {
        x = (x + 50) * x;
    }
}
