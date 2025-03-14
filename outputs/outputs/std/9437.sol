pragma solidity ^0.8.0;
contract Main
{
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    function greet(address a, address b,address c,address d) public
    {
        a.call{value: 10, gas: 32000}(abi.encodeWithSignature("modify(uint,uint,uint,uint)",_a,_b,1,_c));
        b.call{value: 10, gas: 32000}(abi.encodeWithSignature("modify(uint,uint,uint,uint)",2*10,_b,1,_d));
        c.call{value: 10, gas: 32000}(abi.encodeWithSignature("modify(uint,uint,uint,uint)",1*_b,1*_c,1*d,_e));
        d.call{value: 10, gas: 32000}(abi.encodeWithSignature("modify(uint,uint,uint,uint)",_d,_d,2*_d,_f));
    }
    function testFunc(
        address a,
        address b,
        uint m1,
        uint m3,
        uint m5,
        uint n3,
        uint n5,
        uint p4,
        uint p6,
        uint q2,
         uint r3,
        uint r5
       ) public
    {
        a.call{value: 10, gas: 32000}(abi.encodeWithSignature("multiply(uint,uint)",1,_d));
        b.call{value: 10, gas: 32000}(abi.encodeWithSignature("multiply(uint,uint)",1,_e));
    }

}*/
