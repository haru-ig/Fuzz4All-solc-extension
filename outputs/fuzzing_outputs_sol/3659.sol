pragma solidity ^0.8.0;
contract MutateSemantic6Caller3 {
    function modifyC4(uint256 x, uint y) pure public returns (uint) {
        return x;
    }
}
contract MutateSemantic6Caller5 {
    function modifyC4(uint256 x, uint y) pure public returns (uint) {
        bytes memory a = new bytes(24);
        uint i = 1;
        for (; i<24; ++i) {
            a[i] = bytes1(byte(i));
        }
        return a.sum(x);
    }
    function modifyC5(uint256 x, uint y) pure public returns (uint) {
        return (x + y);
    }
    function modifyC6(uint256 x, uint y) pure public returns (uint) {
        return (x + y + 1);
    }

}
