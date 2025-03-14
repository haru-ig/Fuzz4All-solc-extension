pragma solidity ^0.8.0;
contract B is A {
    function f(uint64) public {
        uint64 x = 1;
        uint64 y = x + 2;
    }
}

pragma solidity ^0.8.0;
contract C {
    function f(uint64) public {
        address addr = address(uint160(42));
        uint64 x = addr + 42;
    }
}
