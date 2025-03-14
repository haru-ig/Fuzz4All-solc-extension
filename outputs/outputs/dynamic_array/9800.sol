pragma solidity ^0.8.0;
contract SemanticTest_v1 {
    uint[] public foo_arr;
    uint[] public bar_arr;

    function __constructor(uint[] memory _x, uint[] memory _y) public {
        foo_arr = _x;
        bar_arr = _y;
    }

    function foo(uint[] memory _arr) public {
        uint[] memory zarr = new uint[](_arr.length);
        for (uint i = 0; i < _arr.length; i++) {
            zarr[i] = _arr[i];
        }
        bar_arr = zarr;
    }

    function bar(uint[] memory _arr1, uint[] memory _arr2) public {
        uint[] memory zarr1 = new uint[](_arr1.length);
        uint[] memory zarr2 = new uint[](_arr2.length);
        for (uint i = 0; i < _arr1.length; i++)
            zarr1[i] = _arr1[i];
        for (uint i = 0; i < _arr2.length; i++)
            zarr2[i] = _arr2[i];
        foo_arr = zarr1;
    }

    function foo_test1(uint[] memory _arr) public {
        uint[] memory zarr = new uint[](_arr.length);
        for (uint i = 0; i < _arr.length; i++) {
            zarr[i] = _arr[i];
        }
        bar_arr = zarr;
    }
}

pragma solidity ^0.8.0;
contract SemanticTest_v0 {
    uint[] public bar_arr;

    struct Data {
        uint[] x;
    }
    function __constructor(uint[] memory _x) public {
        bar_arr = _x;
    }

    function __calldata_array_assignment_as_function_calldata() public {
        Data memory d;
        d.x = bar_arr;
    }

    function __calldata_array_assignment_as_function_storage() public {
        uint[] memory arr = new uint[](bar_arr.length);
        for (uint i = 0; i < bar_arr.length; i++) {
            arr[i] = bar_arr[i];
        }
        bar_arr = arr;
    }

    function __calldata_array_assignment_as_storage
