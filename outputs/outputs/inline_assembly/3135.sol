pragma solidity ^0.8.0;
contract C {
    struct S {
        mapping(bytes32 => mapping(uint => address[])) public balances;
    }
    S pubS;
    function test() public {
        bytes32 k = "0xb0e049e8f380f0ff";
        S memory mem = pubS;
        mem.balances[k][0] = uint[](0);
    }
}
