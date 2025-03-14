pragma solidity ^0.8.0;
contract Mutate67 {
    struct FooStruct {
        uint bar;
        uint[] arr;
    }
    FooStruct memory foo;
    mapping(uint => uint) a;
    constructor() {
        foo.bar = 20;
        foo.arr[0] = 1;
        foo.arr[1] = 99;
        foo.arr[8] = 30;
    }
    function myFunction() public {
        a[1] = foo.bar + foo.arr[0];
        a[8] = foo.arr[1] + foo.arr[2];
        a[8] = foo.arr[1] + 1;
    }
}
