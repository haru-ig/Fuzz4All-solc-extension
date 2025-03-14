pragma solidity ^0.8.0;
contract Test33 {
    struct A {
        address[4] array;
        address[4] array1;
    }
    function f() public pure returns (A memory) {
        A storage a = a;
        a.array[0] = a.array[3];
        return a;
    }
    function g() public pure returns (A memory) {
        A storage storage a = a;
        a.array[0] = a.array[1];
        return a;
    }
}
