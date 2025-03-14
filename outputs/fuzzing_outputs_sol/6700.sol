pragma solidity ^0.8.0;
contract TestFallback {
    function f1(uint i) public pure returns (int) {
        return 1337;
    }
    function f2(uint i) public pure returns (uint) {
        return int(12389);
    }
    function f3(uint i) public pure returns (uint, uint) {
        return (int(int(0x123456)), (int(0x5678901234567890)));
    }
    function f4(uint i) public pure returns (uint, uint, uint, uint) {
        return (
            1337,
            12389,
            12389,
            12389
        );
    }
    function f5(uint i) public pure returns (uint, uint, uint, uint, uint) {
        return (
            1337,
            12389,
            12389,
            12389,
            12389
        );
    }
    function f6(uint i) public pure returns (int) {
        return int(1337);
    }
    function f7(uint i) public pure returns (uint) {
        return int(12389);
    }
    function f8(uint i) public pure returns (uint, uint) {
        return (int(int(0x123456)), (int(0x5678901234567890)));
    }
    function f9(uint i) public pure returns (uint, uint, uint, uint, uint) {
        return (
            1337,
            12389,
            12389,
            12389,
            12389
        );
    }
    function f10(uint i) public pure returns (uint, uint, uint, uint, uint, uint) {
        return (
            1337,
            12389,
            12389,
            12389,
            12389,
            12389
        );
    }
}
