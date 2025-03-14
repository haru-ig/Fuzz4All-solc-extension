pragma solidity ^0.8.0;
contract Example
{
    uint[] a;
    uint[] arr;
    uint[2] b;
    uint[] c;
    uint[2] d;
    function add(uint _x) public {
        arr.push(_x);
        if (_x==0) return;
        a.push(0);
        a.push(_x);
        b.push(0);
        b.push(_x + a[_x-1]);
    }
    function sub(uint _x) public {
        a.push(_x);
        arr.push(_x);
        b.push(a[_x-1]);
        b.push(a[_x-1] + a[_x]);
    }
}
