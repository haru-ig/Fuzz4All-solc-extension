pragma solidity ^0.8.0;
import "../contracts/EquivalentGoodCase122.sol";
import "../contracts/EquivalentGoodCase25.sol";
import "../contracts/EquivalentGoodCase53.sol";
contract EquivalentGoodCase125 is EquivalentGoodCase25 {
    EquivalentGoodCase122 m2;
    function Test() {
        m2.m = 9;
    }
    function Test2() {
        m2.m = 8;
        m2.m2 = 6;
        m2.m = 9;
    }
}
contract EquivalentGoodCase137 {
    uint8 m;
    uint m2;
}
contract EquivalentGoodCase148 {
    uint8 m;
    uint m2;
}
contract EquivalentGoodCase173 {
    uint8 m;
    uint m2;
}
contract EquivalentGoodCase193 {
    uint8 m;
    uint m2;
}
contract EquivalentGoodCase220 {
    uint8 m;
    uint m2;
}
contract EquivalentGoodCase239 {
    uint8 m;
    uint m2;
}
contract EquivalentGoodCase242 {
    uint8 m;
    uint m2;
}
contract EquivalentGoodCase258 {
    uint8 m;
    uint m2;
}
contract EquivalentGoodCase275 {
    uint8 m;
    uint m2;
}
contract EquivalentGoodCase277 {
    uint8 m;
    uint m2;
}
contract EquivalentGoodCase281 {
    uint8 m;
    uint m2;
}
contract EquivalentGoodCase297 {
    uint8 m;
    uint m2;
}
contract EquivalentGoodCase312 {
    uint8 m;
    uint m2;
}
contract EquivalentGoodCase32
