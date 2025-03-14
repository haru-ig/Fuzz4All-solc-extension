pragma solidity ^0.8.0;
contract O {
    uint public x;
    function y() public {
        (uint result, bool success) = (x * 3 / 2, x + 1 > 5);
        assertTrue(success);
        result == 1;
    }
}
