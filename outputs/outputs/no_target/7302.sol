pragma solidity ^0.8.0;
contract AbiCoderUpgradedTest {
    bytes  constant o = "\xc2\x0c";
    uint8[5] memory i = [0xb1, 0x5c, 0xdc, 0xb6, 0x5a];
    bytes memory result = AbiCoderUpgraded.encodeNumber(o, i);
    bytes memory expected = hex"0cbb5cbc";
    assert(AbiCoderUpgraded.decodeNumber(o, i, 0) && result == expected);

    bytes memory y = "0x23";
    bytes memory i = "0x0b15cdcb6b5a".bytes;
    result = AbiCoderUpgraded.encodeBytes(o, i);
    expected = hex"0cbb5cbc";
    assert(AbiCoderUpgraded.decodeBytes(o, i, y) && result == expected);

    bytes memory emptyResult;
    bytes memory emptyExpected;
    (emptyResult, emptyExpected) = AbiCoderUpgraded.decode(o, i, 0);
    assert(emptyResult == uint8[0]);
    assert(emptyExpected == uint8[0]);
}
