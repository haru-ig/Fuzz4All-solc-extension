pragma solidity ^0.8.0;
contract Test30015 {
    struct MyData {
        uint8 arr1[4];
        uint8[] arr2;
        MyData(uint8 a, uint8 b) {
            arr1[1] = a;
            arr1[0] = b;
            delete arr2;
        }
    }
    constructor() public {
        data.arr1[1] = 66;
        MyData memory x = MyData(99, 100);
        MyData memory y = MyData(66, 77);
        if(y == x) {}
    }
    fallback() external payable { }
    MyData private data;
}
