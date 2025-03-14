pragma solidity ^0.8.0;
contract T34_call_data_array_semantics5 {
    event Emit0(uint256 a);
    event Emit1(uint256 a);
    event Emit2(uint256 a);
    event Emit3(uint256 a);
    struct TestCase { uint256 a; bytes a_bytes; }
}
contract T34_call_data_array_semantics6 {
    event Emit0(uint256 a);
    event Emit1(uint256 a);
    event Emit2(uint256 a);
    event Emit3(uint256 a);
    struct TestCase { uint256 a; bytes a_bytes_nested; }
}
contract T34_call_data_array_semantics6x2 {
    event Emit0(uint256 a);
    event Emit1(uint256 a);
    event Emit2(uint256 a);
    event Emit3(uint256 a);
    struct TestCase { uint256 a_calldata; bytes a_bytes; }
    struct TestCase2 { uint256 a_calldata; uint256 a_uint32; }
}
