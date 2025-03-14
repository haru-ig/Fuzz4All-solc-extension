pragma solidity ^0.8.0;
contract Mutater10 {
    function mutatedFunction() public {
        (uint32 _a, uint32 _b, uint32 _c, uint32 _d, uint32 _e, uint32 _f) = getParam();
        uint32 value = (_a + _b + _c + _d + _e + _f);
        uint32 value2 = (_a + _b + _c + _d + _e + _f + (_a % 2) * (_b % 2) * (_c % 2) * (_d % 2) * (_e % 2) * (_f % 2) + 1);
        uint32 finalValue = max(_a, max(_b, max(_c, max(_d, max(_e, max(_f, value))))));
        return finalValue;
    }
    function getParam() public pure returns (uint32 a, uint32 b, uint32 c, uint32 d, uint32 e, uint32 f) {
        a = 0xAA;
        b = 0xBB;
        c = 0xCC;
        d = 0xDD;
        e = 0xEE;
        f = 0xFF;

    }
    function max(uint32 a, uint32 b) public pure returns (uint32 max) {
        return a >= b? a : b;
    }
}
