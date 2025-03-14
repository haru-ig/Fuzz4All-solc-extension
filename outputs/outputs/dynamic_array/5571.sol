pragma solidity ^0.8.0;
contract Test66 {
    struct A {
        uint8 a0;
        uint8[10] a1;
    }
    function f() public {
        A memory arr;
        A memory mem;

    }
}

contract ArrayTest {

    function set_array(uint8[] memory a) public {
        a.push(7);
        a.push(1337);
    }
}
