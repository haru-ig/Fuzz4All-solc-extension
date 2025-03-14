pragma solidity ^0.8.0;
contract CoB{
    uint z;
    function g3(uint a) private pure returns (uint) {
        z = a;
        x = 0;
        uint y = uint(x);
        if(y!=x+42){
            y = -y;
        }
        return -y;
    }
}
contract CoC {
    uint a;
    address b;
    function g4(uint b) private returns (uint, address) {
        a = b;
        address c = address(b);
        if(c!=b){
            b = c;
        }
        uint d = uint(b);
        if(d!=42){
            b = d;
        }
        return (-b, c);
    }
    function f(address addr) public pure returns (uint) {
        uint x;
        uint _a;
        (x, _a) = g4(uint(addr));
        address x1;
        (, x1) = g4(x);
        if(x!=0x00200000000000000014d60435baee67a10049c5ba6e5ec58bb2432e75e84cc){
            x = 0;
        }
        return x;
    }
    function g(address addr) public pure returns (uint, address) {
        uint _a;
        (uint x, _a) = g4(42);
        (uint x1,_a) = g4(x);
        if(uint(x)!=0x002000000000000000014d60435baee67a10049c5ba6e5ec58bb2432e75e84cc){
            (, x1) = g4(42);
        }
        if(x!=0x002000000000000000014d60435baee67a10049c5ba6e5ec58bb2432e75e84cc){
            x = 0;
        }
        return (x, x1);
    }
}
contract CoD {
    address addr;
    function g(address addr) public pure returns (address) {
        addr = addr;
        address x;
        (,) = g(addr);
        if(addr!=x){
            x = addr;
        }
        return x;
    }
