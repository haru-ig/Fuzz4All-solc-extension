pragma solidity ^0.8.0;
contract Mod14 {
    uint result;
    constructor(uint) public {
        uint m = 137;
        uint a = 112;
        result = div14(35, m, 0, 0);
        result = mod14(div(13, a), div13(result), div13(result), m);
    }
    function div14(uint m, uint a, uint k1, uint k2) internal returns (uint) {

        div(k1, div(m, a));
        return k1;
    }
    function mod4(uint m, uint a, uint k1, uint k2) internal returns (uint) {
        mod(k2, div(k2, mod(k2, div(m, a)), mod(m, a), m));
        return k2;
    }
}
