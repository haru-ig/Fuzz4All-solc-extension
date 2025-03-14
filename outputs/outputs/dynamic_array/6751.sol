pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T0F9C_dynamic_calldata_array_semantics {
    struct Test { uint a; }
    function test(Test[] calldata m1)
    public returns(int){
        Test[] memory m2 = new Test[](2);
        m2[0].a = 27;
        m2[1].a = 0;
        m2[0].a++;
        return m1.length;
    }
}
contract T0F9D_empty_calldata_array_semantics {
    struct Test { uint a; }
    function test_0(Test[] calldata)
    public returns(int[] memory, int){
        return (new int[](0), 1);
    }
}
contract T0F9D_empty_calldata_array_semantics_2 {
    struct Test { uint a; }
    function test_1(Test calldata[] memory)
    public returns(int, int){
        return (1,3);
    }
}
contract T0F9D_empty_calldata_array_semantics_3 {
    struct Test { uint a; }
    function test_2(Test[] memory, Test calldata[] memory)
    public returns(int[], int){
        return (new int[](0), 2);
    }
}
contract T0F9D_empty_calldata_array_semantics_4 {
    struct Test { uint a; }
    function test_3(Test[] calldata, Test calldata[] memory)
    public returns(int, int){
        return (2, 3);
    }
}
contract T0F9D_empty_calldata_array_semantics_5 {
    struct Test { uint a; }
    function test_4(Test[] memory, Test[] calldata memory)
    public returns(int[], int[], int){
        return (new int[](0), new int[](0), 4);
    }
}
contract T0F9D_empty_calldata_array_semantics_6 {
    struct Test { uint a; }
    function test_5(Test calldata[] memory, Test[]
