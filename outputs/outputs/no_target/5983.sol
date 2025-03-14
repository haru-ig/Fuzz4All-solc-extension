pragma solidity ^0.8.0;
contract MyContract {
    function f(bytes memory b) public pure returns (bytes memory) {
        return bytes(keccak256(abi.encode("hello")));
    }
    function g(bytes memory b) public pure returns (bytes memory) {
        bytes memory a;
        assembly {
            a := sub(a, 0x19001900000000000190019000000000001900190000000000019001900000000000190019000000000000001900190000000000000000001900190000000000000000001900190000000000000000000019001900000000000000000000000001900190000000000000000000000000000000000190019000000000000000000000000000000000000190019000000000000000000000000000000000000000000000001900190000000000000000000000000000000000000000000000001900";
            a
        }
    }
    function m() public view returns (bytes memory) {
        bytes memory b;
        b = f(g(g(g(g(g(g(g(g(g(g(g(g(g(g(g(g(g(g(g(g(g(g(g(g(g(g(g(g(g(g(g(g(g
