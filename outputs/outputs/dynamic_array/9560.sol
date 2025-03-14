pragma solidity ^0.8.0;
contract Main7{
    constructor () public {
        uint[] memory a;
        uint[] memory p;
        uint[] memory q;
        uint[] memory x;
    }

    function f(uint[] memory x) public {
        uint[] memory a;
        uint[] memory b;
        uint[] memory c;
        uint[] memory d;
        uint x;
        while((x = a.push(uint32(-1)) + uint32(1)) <= b.push(uint32(0))) {
             uint y;
             while((y = c.push(uint32(0))) < d.push(x));
             c.push(uint32(x));
        }
    }
}
