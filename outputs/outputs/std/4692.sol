pragma solidity ^0.8.0;
contract C {
    A public a;
    A public b;
    function set(uint f1, uint f2, uint f3) public
    {
        a.f1 = f1;
        a.f2 = f2;
        a.f3 = f3;
    }
    function mult(uint f4, uint f5, uint f6) public
    {
        b.f4 = a.f1 * a.f2 * a.f3;
        b.f5 = a.f1 + a.f2;
        b.f6 = a.f1 - a.f2 + a.f3 + a.f4 + a.f5 + a.f6 - b.f4 + b.f5 - a.f6;
    }
}
