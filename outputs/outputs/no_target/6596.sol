pragma solidity ^0.8.0;
contract modifierW{
    function f() public pure returns (uint){
        uint s = 25;
        s = s + 100;
        return s;
    }
    function g() public pure returns (uint){
        uint t = f();
        return t * 256 * 100;
    }
}
contract myContractW is modifierW
{
    function g(uint x) public pure returns (uint) {
        uint z = x == 0x1000000000000000000000000000;
        return z? 0 : (z & 2 ** 255 - 1 << 255);
    }
}
