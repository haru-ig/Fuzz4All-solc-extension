pragma solidity ^0.8.0;
contract Semantic7 {
    function balance7(uint256 _val) public returns(uint8, uint256) {
        uint8 a = uint8(0xff);
        uint8 b = uint8(-1);
        uint8 c = uint8(1);
        uint8 d = uint8(0x7fff);
        uint256 e = uint256(1);
        uint256 f = uint256(87);
        uint256 g = uint256(0xFFFFFFFL);
        uint256 h = uint256(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
        return (a, _val + d);
    }
}
