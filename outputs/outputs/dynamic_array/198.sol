pragma solidity ^0.8.0;
abstract contract A {
    uint[10] internal a;
}
contract C5 {
    uint[10] internal a;
    constructor() {
        a[0] = 10;
        a[1] = 20;
    }
    function func1() payable {
        uint[10] memory b;
        b = A();
        b[3] = 10;
        b[4] = 20;
        a[5] = 30;
    }
    function func2() internal {
        uint[10] memory b;
        b = A();
        b[4] = 10;
        a[6] = 30;
        a[7] = 30;
        a[8] = 30;
    }
}
