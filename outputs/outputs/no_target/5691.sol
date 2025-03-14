pragma solidity ^0.8.0;
contract Test {
    Baz2 b;
    function () external {
        emit Log(1);
    }
    function Log(uint256 x) {
        b.a = msg.sender;
        emit Log2(2, x + 1);
        emit Log1(3, x);
    }
    function Log2(uint256 x, uint256 y) {
        b.a2 = msg.sender;
        emit Log3(4, x + 1, y + 1);
        emit Log4(5, x);
    }
    function Log3(uint256 x, uint256 y, uint256 z) {
        b.a3 = msg.sender;
        emit Log5(6, x + 1, y + 1, z + 1);
    }
    function Log4(uint256 x, uint256 y) {
        b.a3 = msg.sender;
        emit Log6(7, x, y);
    }
    function Log5(uint256 x, uint256 y, uint256 z) {
        b.a3 = msg.sender;
        emit Log7(8, x, y, z);
    }
    function Log6(uint256 x, uint256 y) {
        b.a2 = msg.sender;
        emit Log8(9, x, y);
    }
    function Log7(uint256 x, uint256 y, uint256 z) {
        b.a3 = msg.sender;
        emit Log9(10, x, y, z);
    }
    function Log8(uint256 x, uint256 y) {
        b.a = msg.sender;
        emit Log10(11, x + 1, y + 1);
    }
    function Log9(uint256 x, uint256 y, uint256 z) {
        b.a2 = msg.sender;
        emit Log11(12, x, y + 1, z + 1);
    }
    function Log10(uint256 x, uint256 y) {
        b.a3 = msg.sender;
        emit Log12(13, x + 1, y);
    }
    function Log11(uint256 x, uint256 y, uint256 z) {
        b.a3 = msg.sender;
        emit Log13(14);
    }
    function Log12(uint256 x, uint256 y) {
        b.a2 = msg.sender;
        emit Log14(15);
    }
    function Log13(uint256 x) {
        b.a3 = msg.sender;
        emit Log15(16);
    }
    function Log14(uint256 x) {
        b.a
