pragma solidity ^0.8.0;
contract Array1_Semantics_Equivalent {
    uint256 a ;
    uint256 b ;
}
pragma solidity ^0.8.0;
contract memory_Functions_Test {
    constructor(uint256 arg) internal {
        a = arg;
        b = arg;
    }
    function test() internal pure returns (uint256) {
        return a + b;
    }
    function getB_test() internal pure returns (uint256) {
        return b;
    }
    function new_Array_Initialised() internal pure returns (Array1_Initialised) {
        return new Array1_Initialised();
    }
    function return_B_on_TestCall() public pure returns (uint256) {
        uint256 val = test();
        return val;
    }
    function access_Array_Initialised() public pure returns (Array1_Initialised) {
        Array1_Initialised memory memory_val = new_Array_Initialised();
        return memory_val;
    }
    function modify_Array() public pure returns (Array1_Semantics_Equivalent) {
        Array1_Semantics_Equivalent memory memory_val = new_Array_Initialised();
        b += 1;
        return memory_val;
    }
    function return_array() public pure returns (uint256[] memory) {
        return new uint256[](2);
    }
    function return_array_on_TestCall() public pure returns (uint256[] memory) {
        require(a == 3 && b == 3, );
        return new uint256[](2);
    }
    function returns_memory_from_subroutine() public pure returns (uint256) {
        return b;
    }
    function returns_memory_from_function_call() public pure returns (uint256) {
        b += 1;
        return b;
    }
    function returns_array() public pure returns (uint256[] memory) {
        return [a, b];
    }
    function returns_array_on_TestCall() public pure returns (uint256[] memory) {
        require (a == 16, );
        return [a, b];
    }
    function returns_memory_from_anotherFunction() public pure returns (uint256[] memory) {
        uint256 _a = a;
        _a += 1;
        uint256 _b = b;
        _b += 1;
        return [a, b];
    }
    function returns_memory_from_anotherFunction_with_array_input() public pure returns (uint256[] memory) {
        uint256 _a = a;
        _a += 1;
        uint256[] memory _b = [a, b];
        return _b;
    }
    function returns_b_for_TestCall() public pure returns (uint256) {
        return b;
    }
    function returns_b_from_TestCall() public pure returns (uint256) {
        b = 2;
        return b;
    }
}
