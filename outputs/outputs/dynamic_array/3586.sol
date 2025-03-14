pragma solidity ^0.8.0;
contract C {
    B[] public _b;
    function b() external {
        _b[1] = B.G;
    }
}
