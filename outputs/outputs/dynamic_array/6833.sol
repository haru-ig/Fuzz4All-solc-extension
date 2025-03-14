pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics4 {
    event Emit(uint256 a);
    address payable address = 0x42;
    uint32 internal a;
    bytes32 internal b;
    bytes memory c;
    uint256 internal d;
    constructor () { a = 0; b = 0xaB; c=""b; d=1; Emit(a); }
    function f() public { Emit(a); }
    function g() public pure { uint256 i = 2; }
    function h() public pure { uint256 i = 1; }
}
