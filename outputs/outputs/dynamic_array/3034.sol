pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicArary {
    uint[][][] test_arr;
    uint[][] test_arr_a;
    uint[][][byte] test_arr_b;
    uint[][][byte][byte] test_arr_c;
    uint test_arr_array_a[10];
    uint test_arr_array_b[10][10];
    uint test_arr_array_c_a[10][10];
    uint test_arr_array_c_b[10];
    uint test_arr_array_c_b_c[10][0];
    constructor () public {
        test_arr_array_a = test_arr_array_b = new uint[10][10];
        test_arr_array_c_a[9][9] = test_arr_array_c_b;
        test_arr_array_a = test_arr_array_b = new uint[10][10];
        test_arr_array_a = test_arr_array_b = new uint[10][10];
        test_arr_array_c_a = test_arr_array_b = new uint[10][10][10];
        test_arr_array_c_a = test_arr_array_b[0];
        test_arr_array_c_a = test_arr_array_a;
        test_arr_array_c_a = test_arr_array_b;
        test_arr_array_c_b_c = test_arr_array_a;
        test_arr_array_c_b = test_arr_array_c_b_c;
        test_arr_array_c_a = test_arr_array_a[5];
        test_arr_array_c_a = test_arr_array_b[5];
        test_arr_array_c_a = test_arr_array_c_a + test_arr_array_b[4];
    }
    function f() public view returns (uint[][] memory) {
        return test_arr_array_a;
    }
}
contract Test_AssignmentDynamicArary {
    function t() public view returns (uint[][] memory) {
        uint[][] memory t
