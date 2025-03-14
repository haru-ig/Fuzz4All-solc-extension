pragma solidity ^0.8.0;
contract Test39 {
    uint[] public arr;
    function f() public returns (uint[] memory) {
        return arr;
    }
    function g() public pure returns (uint[] memory) {
        return new int[](1);
    }
    function h() public pure returns (uint[] memory) {
        uint[] memory newarr = new uint[](4);
        newarr[3] = 3;
        return newarr;
    }
}
contract Test41 {
    uint[] public arr;
    function f() public returns (uint[] memory) {
        return arr;
    }
    function g() public pure returns (uint[] memory) {
        return new int[](1);
    }
}
