pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations18_orig2 {
    uint[] a;
    uint[] b;
    function test() public {
        a.push(3);
        a.push(2);
        b.push(2);
        b.push(1);
        b[0]+=a[1];
        if (a[1]!=0){
            b[0]+=a[2];
        }
    }
}
contract SemanticEquality_ArrayMutations18 {
    struct S {
        uint[] a;
        uint[] b;
    }
    S s;
    uint k = 0;
    constructor () public {
        s.a[1]+=1;
        s.b[2]+=1;
    }
    function test() public {}
}
contract SemanticEquality_ArrayMutations19 {
    struct S {
        uint[] a;
    }
    uint k = 0;
    uint[] a;
    constructor () public { }
    function test() public {}
}
contract SemanticEquality_ArrayMutations20 {
    uint[] a;
    uint k = 0;
    function test() public {
        a.push(1);
    }
}
contract SemanticEquality_ArrayMutations21 {
    uint[] public a;
    uint public _x;
    uint public _y;
    uint public _z;
    uint[] array_with_values_for_test;
    function test() public {
        array_with_values_for_test.push(_x);
        array_with_values_for_test.push(_y);
        array_with_values_for_test.push(_z);
    }
    function set_values_for_test_for_a() public {
        a[0] = _x; a[1] = _z;
        a[0] = _y;
        a[1] = _y; k = 0;
        array_with_values_for_test.push(_y);
        array_with_values_for_test.push(_y);
        array_with_values_for_test.push(_y);
        array_with_values_for_test.push(_z);
        array_with_values_for_test.push(_y
