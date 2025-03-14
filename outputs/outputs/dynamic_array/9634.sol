pragma solidity ^0.8.0;
contract Mutations {
    uint256[] public arr1;
    uint256[] public arr2;
    uint256 public contractAddress;
    constructor () public {
        arr1 = [contractAddress];
        while (arr1.length < 10) {
            arr1[arr1.length + 1] = contractAddress + 1;
        }
    } else {
        arr1[arr1.length + 1] += 1;
    }
}

pragma solidity ^0.8.0;

contract Main {

    struct MyStruct {
        MyStruct element1;
        uint[] data;
        uint[] data2;
        MyStruct[] arr;
        uint[] arr1;
        uint[] arr2;
        uint arr3;
        uint256 arr4;
    }
    MyStruct[] public arr;
    uint public contractAddress;
    constructor () public {
        arr.push(MyStruct(MyStruct(contractAddress, arr3, 0), arr1, arr1, 0));
        while (arr.length < 10) {
            MyStruct s;
            for (uint i = 0; i < arr.length; i += 1)
            {
                s = arr[i];
                s.element1.data[0] = i;
                s.element1.arr[0] = arr1;
                s.element1.arr[1] = s.element1.arr1;
                s.element1.arr[2] = s.element1.arr2;
                s.data[0] = s.element1.arr3;
                s.data2[0] = i;
                s.arr[0] = s.data;
                s.arr[1] = s.arr1;
                s.arr[2] = s.arr2;
                s.arr1[0] = s.arr3;
                s.arr2[0] = s.arr3;
                s.arr2[1] = contractAddress;
                s.arr3 += 1;
                s.arr4 += arr4;
            }
            s.arr[2] = s.arr1;
        }
    }
