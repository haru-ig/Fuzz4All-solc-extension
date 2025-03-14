pragma solidity ^0.8.0;
contract EquivalentGoodCase2 {
    uint8 m;
    uint m2;
    constructor() {
        m = 0;
    }
}
contract EquivalentGoodCase3 {
    uint8 m;
    uint m2;
    constructor() {
        m = 0;
    }
    function setUint(uint _m) public {
        m = _m;
    }
    function setUint2(uint _m2) public {
        m2 = _m2;
    }
}
contract EquivalentGoodCase6 {
    uint8 m;
    uint m2;
    constructor() {
        m = 0;
        m2 = 0;
    }
    function setUint(uint _m) public {
        m = _m;
    }
    function setUint2(uint _m2) public {
        m2 = _m2;
    }
    function getUint() public pure returns(uint) {
        return m;
    }
    function getUint2() public pure returns(uint) {
        return m2;
    }
}
contract EquivalentGoodCase4 {
    uint8 m;
    uint m2;
    uint[] a;
    uint[] b;
    constructor() {
        uint[] memory arrA;
        a = arrA;
        uint[] memory arrB;
        b = arrB;
    }
}
contract EquivalentGoodCase7 {
    uint8 m;
    uint m2;
    uint[][][][] c;
    uint[][][][] d;
    uint[][][][] e;
    uint[][][][] a;
    uint[][][] b;
    uint[][][] c;
    uint[][][] d;
    uint[][][] e;
    uint[][]a;
    uint[][]b;
    uint[][]c;
    uint[][]d;
    uint[][]e;
    uint[][][][] f;
    uint[][][][] g;
    uint[][][][] h;
    uint[][][][] x;
    uint[][][][] s;
    uint[][]
