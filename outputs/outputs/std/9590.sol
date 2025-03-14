pragma solidity ^0.8.0;
pragma solidity >=0.8.0;
contract Mutate14y {
    uint8 constant public a = 0;
    uint16 constant public b = uint8(0xFF);
    uint23 constant public c = uint16(0xFFF);
    uint72 constant public d = uint23(0xFFF);
    uint132 constant public e = uint72(0xFFF);
    uint256 constant public f = uint132(0xFFF);
    uint512 constant public g = uint256(0xFFF);
    bool f;
    uint8[1][5] a;
}
