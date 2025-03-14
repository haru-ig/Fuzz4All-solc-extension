pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T35_call_data_array_semantics_2 {
    enum TestEnum { Enum1, Enum2 }
    function set(TestEnum _e) public { emit Emit01(_e); }
    event Emit01(TestEnum v);
    struct { uint8 a; }
}
