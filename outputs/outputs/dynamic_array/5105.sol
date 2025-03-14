pragma solidity ^0.8.0;
contract Test94F5 {
    bytes32 public constant B;
    function f() public pure {
        B;
    }
    function g() public pure {
        B.concat(0x1234000000000000000000000000000000000000000000000000000000000000);
    }
}
