pragma solidity ^0.8.0;
contract Imperfect {
    uint8 Num = uint8(28u) ^ uint8(0u) ^ uint8(uint160(28u) >> uint160(0u));
}
