pragma solidity ^0.8.0;
library TestMutated21 {
    bool private bool_literal;
    int8 private uint8_literal;
    uint16 private uint16_literal;
    uint8 private uint8_literal_overflow;
    bytes16  private bytes16_literal;
    bytes32 private bytes32_literal;

    function add(uint x, uint) public pure returns (uint) {
        require (true == bool_literal, "_");
        require (!uint16_literal, "_");
        require (!uint8_literal || (uint8_literal_overflow), "_");
        return x;
    }
}
