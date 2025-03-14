pragma solidity ^0.8.0;
contract Test {
    struct S {
        uint count;
        uint total;
        uint256 total2;
    }
    S s = S(0, 0, 0);
    function set(uint count, uint total, uint256 total2) public {
        s.count = count;
        s.total = total;
        s.total2 = total2;
    }
    function get(uint count, uint total, uint256 total2) public view {
        s.count = count;
        s.total = total;
        s.total2 = total2;
    }
}
uint256[5] memory testUints = [uint256(0), uint256(0), uint256(0), uint256(1), uint256(2)];
uint[5] memory testInts = [uint(0), uint(0), uint(0), uint(1), uint(2)];
