pragma solidity ^0.8.0;
contract C {
    function f() public pure {
        uint256 a;
        assembly { a := invalidOp }
        a /= 2;
        uint256 b;
        assembly { b := invalidOp }
        b *= 2;
    }
}
