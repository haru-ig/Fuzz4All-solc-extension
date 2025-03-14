pragma solidity ^0.8.0;
contract R1{
    uint32[] arr;
    function f() public {
        arr[1] = 0;
        uint32 a = arr[1];
    }
}

pragma solidity ^0.8.0;
contract R2{
    uint64[] arr;
    function f() public {
        uint64 a = arr[1];
    }
}

pragma solidity ^0.8.0;
contract R3 {
    bool[3] a = [true, true, true];

    function f() public pure {}

    function g() public pure { g3(); }
    function h() public pure { g2(); }
    function i() public pure { g1(); }
    function j() public pure { g0(); }

    function g0() public pure { }
    function g1() public pure { }
    function g2() public pure { }
    function g3() public pure { }
}
/*
 * Use of a dynamic array with nested array elements is rarely used and is a source of bugs. Many of these bugs are caused by the lack of proper ABI-encoding inside a user-defined contract.
 * As described above, these user-defined contracts are typically recompiled with the new compiler version every time the ABI for user-defined contracts changes. As a result, any ABI-encoding violations performed by the application code are likely to lead to problems.
 *
 * When using this ABI encoding technique, it is essential to include all the nested dynamic array elements in the ABI encoding. While these are often done implicitly by the compiler, they are not a standard solution to this common problem of ABI encoding.
 * To prevent these bugs, it is important to ensure that the ABI encoding of your contract reflects the requirements of the contract.
 *
 * In order to prevent these problems, it is also important to make sure that dynamic arrays are compatible with the dynamic array data type in Solidity. When used with nested values, it is necessary to include all nested dynamic array elements in the ABI encoding for compatibility with the dynamic array. These elements should be used in the ABI encoding as dynamic arrays in Solidity are arrays where the size is not defined at the time of declaration but rather can be changed at runtime as more elements are added, making them flexible for various purposes. Several instances were provided, such as assigning an array without any elements, pre-filling the array with values, and initializing with the new keyword.
 *
 * To check whether
