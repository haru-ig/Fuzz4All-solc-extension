pragma solidity ^0.8.0;






contract MutatedDynamicArrays {
    A memory a;
    address a_ptr;
    mapping(bytes32 => A) bytes_array;
    A[2] memory a2;
    A_struct memory a3;
    A_struct[] a_ptr_array;
    A_struct[] memory a_ptr_array_mem;
    mapping(address => A_struct) address_array;
    mapping(address => A_struct[]) address_array_mem;
    mapping (address => A[2]) address_array2_mem;
    A[2] memory address_array2;

    union U {
        struct A_struct { uint iData; }
        A a1_0;
        A_struct a1_1;
    }
    U u;

    function f() public {
        a.iData = 3;
        bytes_array[hex"f8f6f4f2f0eeeccceae9ecf8f6f4f2f0eeeccceae9ecf8f6f4f2f0eeeccceae9ecf8f6f4f2f0eeeccceae9ecf8f6f4f2f0eeeccceae9ecf8f6f4f2f0eeeccceae9ecf8f6f4f2f0eeeccceae9"] = a;
        A memory _a = a;
        A_struct memory _a_1 = a;
    }

    function g() public {
        uint i;
        a_ptr_array[i] = A_struct({ iData: 4 });
        a_ptr_array_mem[i] = A_struct({ iData: 4 });
        a_ptr_array_mem[0] = A_struct({ iData: 5 })
        a_ptr_array_mem[1] = A_struct({ iData: 4 })
    }

    function h() public {
        address_array[0x3] = A_struct({ iData: 4 });
        address_array_mem[0x3] = A_struct({ iData: 4 });
        address_array_mem[0x3] = A_struct({ iData: 4 });
        address_array2_mem[0x3] = A2({ addr: 5 });
    }

    function i() public {
        uint i;
        address_array2[i] = A2({ addr: 4 });
        address_array2_mem[i] = A2({ addr: 4 });
    }
}
