pragma solidity ^0.8.0;
contract O {
    function f() constant private {
        (int a, int b) = (1, -1);
        b = 3 + a;
    }
}
