pragma solidity ^0.8.0;
contract modifierM{
    function f(uint x) public pure returns(uint){
        uint y = x / 256;
        return y;
    }
    function g() public view returns (uint) {
        return f(0x100000000000000000000000000000000000000);
    }
}
contract myContractM is modifierM
{
    function g(uint x) public view returns (uint) {
        uint y = x / 256;
        return y * 256 + f(y);
    }
}
contract myContract is myContractW, myContractM
{
    function h(uint x) public returns (uint) {
        return 0x8000000000000000 / 0xffffffff + g(0x1000000000000000000000000000000000);
    }
}
