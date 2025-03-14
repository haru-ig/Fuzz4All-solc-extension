pragma solidity ^0.8.0;
contract Mutate{
    address a;
    address e;
    mapping(uint => uint) arr;
    constructor(address a, address e) {
        a = a;
        e = e;
    }
    function test(address a, address e) public {
        a = a;
        e = e;
        a = a;
        if(e == a){
            e = e;
            e = e;
        }
        a;
    }
    function test2(uint[] memory arr) public test(a, a) {
        a = a;
        e = (e = e);
        e = a;
        e;
        a;
        uint[] memory a;
        a;
    }
}
