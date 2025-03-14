pragma solidity ^0.8.0;
contract myContractW{
    function f(uint x) public pure returns(uint) {
        uint y = x / 256;
        return y;
    }
    function g() public view returns (uint) {
        return x * 256 + f(0x10000000000000000000000000000000000);
    }
}
