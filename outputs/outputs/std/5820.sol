pragma solidity ^0.8.0;
contract Mutated16{
    function mutated8(uint[4] memory a) public pure returns (uint) {
        uint x = 15;
        uint [] memory b = new uint[](3);
        b[0] = x;
        a = b;
        return x;
    }
}
contract Mutated17{
    function mutated8(uint[4] memory a) public pure returns (uint) {
        uint x = 15;
        uint [] memory b = new uint[](3);
        b[0] = x;
        a = b;
        return a == b;
    }
}
abstract contract Mutated18{
    bool __internal;
    function mutated8(uint[4] memory a) public pure returns (uint) {
        uint x = 15;
        uint [] memory b = new uint[](3);
        b[0] = x;
        a = b;
        __internal = address(0) == a;
        return __internal;
    }
}
contract Mutated19{
    function mutated8(uint[4] memory a) public pure returns (uint) {
        uint x = 15;
        uint [] memory b = new uint[](3);
        b[0] = x;
        a = b;
        return!true;
    }
}
