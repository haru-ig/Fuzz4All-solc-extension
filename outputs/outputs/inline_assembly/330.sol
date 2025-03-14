pragma solidity ^0.8.0;
contract F1 {
    struct A {
        uint a;
        uint b;
    }
    A a;
    function add(A storage a1, uint a) public view returns (uint){
        a1.a += a;
        return (a1.a);
    }
    function divide(A storage a1, uint a) public view returns (uint){
        a1.a /= a;
        return (a1.a);
    }
}
