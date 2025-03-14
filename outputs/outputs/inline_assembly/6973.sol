pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample85 {
    int128 public counter;
    int128 public sum;
    uint256 counter2;
    uint256 public sum2;
    uint8[7] public arr;

    function count(uint256 a) public view returns (uint256) {
        return count2(a);
    }

    function count2(uint256 a) public view returns (uint256) {
        uint8 c = 0;
        return c;
    }
    function count3(uint256 a) public view returns (uint256) {
        uint8 c = 4;
    }
    function count4() public view returns (uint256) {
        uint8 c = 4;
        uint8 c2 = 4;
    }
    function count5(uint256 a, uint256 b) public view returns (uint256) {
        uint8 c = 4;
        uint8 c2 = 2;
        return 42;
    }
    function count6(uint256 a, uint256 b) public view returns (uint256) {
        uint8 c = 4;
        uint8 c2 = c;
        return 42;
    }
    function count7(uint256 a, uint256 b) public view returns (uint256) {
        uint8 c = 4;
        uint8 c2 = c;
        uint8 c3 = 2;
        uint8 c4 = c;
        return a | b;
    }
    function count10(uint8 a) public view returns (uint256) {
        uint8 c = a + 1;
        uint8 c2 = 4;
        return c;
    }
    function count11(uint256 a) public view returns (uint256) {
        uint8 c = 4;
        uint8 c2 = c;
        uint8 c3 = 2;
        uint8 c4 = c;
        uint8 c5 = c + 1;
        uint8 c6 = a | b;
        return a | b;
    }
    function count12(uint8 a) public view returns (uint256) {
        uint8 c = 4;
        uint8 c2 = a
