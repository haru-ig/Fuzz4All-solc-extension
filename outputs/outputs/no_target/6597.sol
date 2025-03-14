pragma solidity ^0.8.0;
contract modifierX {
    function f(address addr) public pure returns (uint) {
        uint x = uint(uint8(addr));
        return x;
    }
    function g() public view returns (uint) {
        return f(this.balance);
    }
}
contract myContractX is modifierX
{
    function g(uint x) public returns (uint) {
        return x + f(0x10000000000000000000000000000000000000000);
    }
}
