pragma solidity ^0.8.0;
contract Test86New {
    uint256[10][20] private array;
    uint memory[4][3] memory_arr;
    uint memory[3][6] memory_arr_2;
    function m(uint[3][6][] memory memory_arr) pure{
        return;
    }
    function n(uint[10][20][] memory memory_arr) pure{
        return;
    }
    function p(uint memory_arr, uint memory_arr_2) pure{
        return;
    }
    function q(uint[][] memory array_arr, uint[][] memory array_arr_2) pure{
        return;
    }
    function r(uint[] memory array_arr, uint[] memory array_arr_2) pure{
        return;
    }
    function s(uint[10][20][] memory memory_arr, uint [] memory array_arr_2, uint[][] [] memory array_arr_3) pure {
        return;
    }
}
```

Here is a sample contract that illustrates how to create and use dynamic arrays with nested values, using the above contracts and the above test cases.

```solidity



contract Test1 {
    function f() public {
        uint[6][6] memory memory_arr;
        memory_arr[0][0] = 0;
        memory_arr[0][1] = 1;
        memory_arr[0][2] = 50;
        memory_arr[0][3] = 100;
        memory_arr[0][4] = 7;
        memory_arr[0][5] = 40;
        Test86New.m(memory_arr);
    }
}


contract Test2 {
    function g() public {
        uint[6][6] memory memory_arr;
        memory_arr[0][0] = 0;
        memory_arr[0][1] = 1;
        memory_arr[0][2] = 50;
        memory_arr[0][3] = 100;
        memory_arr[0][4] = 7;
        memory_arr[0][5] = 40;
        Test86New.m(memory_arr_2);
    }
}


contract Test3 {
    function h() public {
        uint[][] memory array_arr;
        array_arr[0][0] = [0];
