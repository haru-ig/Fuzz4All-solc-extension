pragma solidity ^0.8.0;
contract Test64 {
    function foo() public {
        uint[64] memory x;
        x[42] += 1;
        x[1000] -= 1;
    }
}
