pragma solidity ^0.8.0;
contract EquivalentMod1 {
    uint a = 6;
    uint b = 6;
}
contract EquivalentMod2 {
    uint8 x = 6;
    uint8 y = 6;
}
contract EquivalentMod3 {
    uint a = 6;
    uint b;
}
contract EquivalentMod4 {
    uint[] a = [6, 6];
    uint[] b;
}
contract EquivalentMod5 {
    uint8 a = 6;
    uint8 b;
}
contract EquivalencyMod6 {
    uint8 a;
    uint8 b;
}
