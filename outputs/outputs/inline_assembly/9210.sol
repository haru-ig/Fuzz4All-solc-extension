pragma solidity ^0.8.0;
contract A {
    uint constant _uint32 = 16**60;
    uint constant _uint64 = 1_000_000_000;
    function mutated(uint) public pure returns (uint) {
        (uint x0) = (((uint64(116_610_112)) * 16) * 60) / _uint64 * 111 + _uint32
        ;
        return (uint(x0));
    }
}
contract A {

    uint constant _uint64 = 1_000_000_000;


    uint constant _uint32 = 16**60;

    function mutated(uint) public returns (uint) {
        (uint x0) = (((uint32(116_610_112)) * 16) * 60) / _uint32 * 111 + _uint32;
        return (uint(x0));
    }
}
