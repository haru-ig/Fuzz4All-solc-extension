pragma solidity ^0.8.0;
contract ArraysMutated2 {
    uint[] public a;
    uint[] public b;
    modifier increment { a += 1; b += 2; _; }
    function incrementWithReturn() public returns (uint) {
        a += 1;
        b += 2;
        return increment;
    }
    function increment() public increment returns (uint) {
        a += 1;
        b += 2;
        return increment;
    }
    function decrement() public increment {
        a -= 1;
        b -= 2;
        _;
    }
    function read() public returns (uint) {
        return b;
    }
    function write(uint x) public increment {
        b = b;
        a = new uint[](a.length + 1);
        a = a;
    }
}
