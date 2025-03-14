pragma solidity ^0.8.0;
pragma experimental "ABIEncoderV2";
contract C {
    uint256[51][62] b1;
    C c;
    constructor(uint256 _a) public {
    }
    function mul(uint256 _a) public payable encodePacked(uint256 a) {
        (, _a) = encode(a);
        c.mul(a);
    }
}
