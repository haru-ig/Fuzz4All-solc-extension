pragma solidity ^0.8.0;
contract Mutated {
    uint[] public u_arr;
    uint public s_arr;
    function appendOneU(uint x) public {
        u_arr.push(uint(x + 1));
    }

    function returnUint(uint x) public pure returns (uint){
        return uint(x + uint(1));
    }

    function returnUArray(uint[] memory to) public returns (uint[]){
        return to;
    }
    function returnSArray(uint[] memory to) public returns (uint[] memory, uint){
        return (to, uint(1));
    }
    function returnIntArray(uint[] memory to) public returns (uint[], uint[]):(uint[], uint):(uint[] memory, uint){
        return (to, uint(1));
    }
    function returnIntArray2(uint[] memory to, uint[] memory y) public returns (uint[] memory, uint):(uint[] memory, uint){
        return (y, uint(1));
    }

    function foo(uint a, uint b) public {
        uint add = uint(a + b);

        uint multiply = uint(a * b);

        uint[] memory add_arr = Convert.returnUArray(Convert._conv_int(add_arr, add_arr, ""));
        uint[] memory add_arr2 = Convert.returnUArray(Convert._conv_int_signed(add_arr, a, b, ""));

        uint s_add = Convert.returnUint(Convert._conv_int(s_arr, s_arr, ""));
        uint s_add2 = Convert.returnUint(Convert._conv_int_signed(s_arr, a, b, ""));

        uint[] memory ret_from_array = Convert.returnUintArray(Convert._conv_int(add_arr, add_arr, ""));
        uint[] memory ret_from_array2 = Convert.returnUintArray(Convert._conv_int(add_arr, add_arr2, ""));

        uint[] memory ret_from_array2bis = Convert.returnUArray(Convert._conv_int_signed(add_arr2, a, b, ""));
    }
}
