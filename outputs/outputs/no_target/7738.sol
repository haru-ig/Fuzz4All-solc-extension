pragma solidity ^0.8.0;
contract Bar {
    function bar() public pure {
        uint8 x;
        enum E1;
        (x, E1.x, uint(x)) = (1, E1.x, uint(x));

        (x, x, x) = (1, E1.x, x);
    }
}
