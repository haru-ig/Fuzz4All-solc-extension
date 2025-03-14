pragma solidity ^0.8.0;
contract Conversion_sol {
    uint64 pub(uint x) constant returns (uint) = 1;
    function toUint(uint x) public pure returns(uint) {
        return x;
    }
    function toUint(address x) public pure returns(uint) {
        return (uint(x));
    }
    function toUint(bytes memory x) public pure returns(uint) {
        return (uint(abi.decode(x, byte)));
    }
}
