pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample68 {
    function test1(uint256 h) public pure returns (uint f1) {
        uint f1 = (h  >> 8, h * 16 );
        uint f1v = f1;
        uint f1f = (f1 * h);
    }
    function test2(uint256 h) public pure returns (uint f2) {
        (, uint f1) = test1(h);
        uint f2 = f1;
        uint f2v = f2;
        uint f2f = (f2 * h);
    }
}
