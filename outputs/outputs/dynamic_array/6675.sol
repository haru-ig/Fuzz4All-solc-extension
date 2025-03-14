pragma solidity ^0.8.0;
contract T8FA_mutator_31_before {
    function f(uint a0, bytes memory a1) public pure {assembly {mstore32(a1, mload32(a1, 32))} }
    function g(uint a0, bytes memory a1, uint a2, bool a3) public pure {assembly {a1 = a2 & a3? a1 : 0x11}}
    function h(uint a0, bytes memory a1, bool a2) public pure {assembly {a1 = a1 && a2? a1 : a1 >> 32}}
    function i(uint a0, bytes memory a1, uint a2) public pure {if(a0 > 100) assembly {a1!= 0x11}}}
    function j(uint a0, bytes memory a1, bool a2) public pure {if(a2) assembly {mstore32(a1, 0x11)} else {mstore32(a1, 0x11)} }
    function k(uint a0) public pure {assembly {mstore32(a0, 60)}}}
    function l(uint a0, bytes memory a1, fixed a2) public pure {assembly {a1!= a2}}}
    function m(uint a0, bytes memory a1, uint a2) public pure {assembly {mstore32(a1, uint)}}}
    function n(uint a0, bytes memory a1, bytes32 a2) public pure {assembly {a1!= a2}}}
}
pragma solidity ^0.8.0;
contract T8FA_mutator_31_after {
    uint constant MAXBYTESBYTES32 = 8192;
    bytes16[15000] private res16;
    mapping(uint256 => bool) private valu0;
    mapping(uint256 => bool) private valu1;
    bytes32[100] private res32;
    mapping(uint256 => bool) private valu2;
    mapping(uint256 => bool) private val
