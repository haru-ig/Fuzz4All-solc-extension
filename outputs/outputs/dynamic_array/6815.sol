pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Modifing_call_data_array_semantics3 {
    struct TestCase { uint256 a[7]; }
    mapping (address => uint256[]) array0;
    event Emit0(uint256[] a);
    struct ModifingEvent { uint256 a[7]; }
    mapping (address => ModifingEvent[]) array1;
    event Emit1(uint256[] a);
}


pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_arrays_semantics {
    struct TestInput { TestInput(uint256 i32); }
    struct TestOutput {
        uint256 a;
        uint256 b;
        uint256 c;
        uint256 d;
        uint256 e;
        uint256 f;
    }
    event Emit0(TestInput[] data);
    event Emit1(uint32[] data);
    event Emit2(uint256[] data);
    event Emit3(uint256 a, uint256 b, uint256 c);
    event Emit4(uint256 a, uint256 b, uint32 d);
    struct TestCase { uint256 a; uint256 b; uint256 c[2]; }
    uint256 public i64Max = 0x00000000000000000000000000000000000000000000000000000000000000fffffffe;
    uint256[] test0;
    uint256[] test1;
    uint256[] test2;
    uint256[] test3;
    uint256[] test
