pragma solidity ^0.8.0;
interface Array_v1 {
}
interface Array_v2 {
}
interface Array_v3 {
}
interface Array_v4 {
}
interface Array_v5 {
}
contract ArrayMutations_v2 is Array_v1, Array_v2, Array_v3, Array_v4, Array_v5 {
}
contract ArrayMutations_v3 is Array_v1, Array_v2, Array_v3 {
}
contract ArrayMutations_v4 is Array_v1, Array_v2, Array_v3, Array_v4 {
}
contract ArrayMutations_v5 is Array_v1, Array_v2, Array_v3, Array_v4, Array_v5 {
}

pragma solidity ^0.8.0;
contract ArrayMutations {
    Array_v2 memory a;
    Array_v5 memory b;
    Array_v1 memory c;
    Array_v4 memory d;
    Array_v3 memory e;
    function testSetAndGetA(Array_v2 memory newA) public returns (Array_v2 memory){
        a = newA;
        Array_v2 memory get = a;
        return get;
    }
    function testSetAndGetB(Array_v5 memory newB) public returns (Array_v5 memory){
        b = newB;
        Array_v5 memory get = b;
        return get;
    }
    function testSetAndGetC(Array_v1 memory new) public returns (Array_v1 memory){
        c[0] = new;
        Array_v1 memory get;
        if (0 < new) {
            get = c[new / 2];
        } else {
            get = c[c.length - 1 - new];
        }
        return get;
    }
    function testSetAndGetD(Array_v4 memory newD) public returns (Array_v4 memory){
        d = newD;
        return d;
    }
    function testSetAndGetE(Array_v3 memory newE) public returns (Array_v3 memory){
        e = newE;
        return e;
    }
}

contract ArrayUse {
    int128[] public v1;
    int256[] public v2;
    uint160[] public v3;
    bool [] public v4;
    int256[7][7] public v5;
    function testGetAndSet1(int128[] memory newV1) public returns (int128[] memory){
        v1 = newV1;
        return v1;
    }
    function testGetAndSet2(int256[] memory newV2) public returns (int256[] memory){
        v2 = newV2;
        return v2;
    }
    function get3() public view
