pragma solidity ^0.8.0;

contract TestArrays {
    using A for A.A;
    function modifyArray_0(A storage a) internal {
        a.f5 += 1;
        delete a.A;
        a.f4 = 45;
    }
    function modifyArray_1(A[] storage a) internal {
        a.remove(1);
        a.sort_0(a.length - 1);
        a.push(2);
    }
    function modifyArray_2_memory(A storage a) internal {
        a.f5 = 1;
        a.f8 = 3;
    }
    function modifyArray_3(uint[] memory a) internal {
        a.push(3);
        a[2] = 5;
        a.length += 1;
    }
    function modifyArray_4(uint256[] memory a) internal {
        a.push(3);
        a[2] = 5;
        a.length += 1;
    }
    function modifyArray_5( mapping(uint, address) memory m) internal {
    }
    function modifyArray_5(uint[] memory a) internal {
        a.push(3);
        a[2] = 5;
        a.length += 1;
    }
    function modifyArray_6(mapping(uint, bytes32) memory m) internal {
        uint[] memory b = new uint[](0);
        a[uint(b.length + 1)] = 3;
    }
}
