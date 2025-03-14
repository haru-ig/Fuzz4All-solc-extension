pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    function xor(uint256 a, uint256 b, uint256 c) internal pure returns (uint256) {
        require(b > 0, "You cannot xor");
        uint256 aXORb = a ^ b ;
        aXORb = aXORb ^ (aXORb >> b);
        bXORc = b ^ c;
        bXORc = bXORc ^ (bXORc >> c);
        return aXORb ^ bXORc;

    }
}
