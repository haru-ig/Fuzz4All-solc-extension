pragma solidity ^0.8.0;
contract test274 {
    uint [100] a;
    uint [100] x;
    constructor() public {
        a[0] = 1;
        a.length = 0;
        x.length = 0;
    }
    function test() public returns (uint) {
        return x.length;
    }
    function mutate() public returns (uint) {
        x.length = 0;
        a.length = 0;
        a[0] = 1;
        return x.length;
    }
}
interface iTest {
    function test() returns (uint);
}
contract test275 is iTest {
    uint [100] a;
    uint [100] x;
    uint i = 1;
    constructor() public {
        a[0] = 1;
        if (iTest.test() == 1) {
            if (a.length == 0) a[0] = 0;
        }
        if (iTest.test() == 1) {
            if (a.length == 0) a[1] = 1;
        }
        if (iTest.test() == 1) {
            if (a.length == 0) a[30] = 1;
        }
        if (iTest.test() == 1) {
            if (a.length == 0) a.length = 0;
        }
    }
    function test() public returns (uint) {
        return x.length;
    }
    function mutate() public returns (uint) {
        x.length = 0;
        a.length = 0;
        x.length = 0;
        x.length = 0;
        x.length = 66;
        x.length = 1;
        x.length = 2;
        a[0] = 1;
        a.length = 0;
        a[30] = 2;
        a.length = 0;
        if (iTest.test() == 1) {
            if (a.length == 0) a.length = 0;
        }
        if (iTest.test() == 1) {
            if (a.length == 0) a[1] = 1;
        }
        if (iTest.test() == 1) {
            if (a.length == 0) a
