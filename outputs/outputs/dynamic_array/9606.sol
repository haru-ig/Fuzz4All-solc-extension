pragma solidity ^0.8.0;
contract Arrays {
    struct T { string a; uint b; uint[] c; mapping(address => uint) d; }
    address payable addr;
    T storage[] a_T1;
    T storage[] a_T2;
    T storage[] a_T3;

    constructor () public {
        addr.transfer(0);
    }
}
