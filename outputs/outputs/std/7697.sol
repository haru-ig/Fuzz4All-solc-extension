pragma solidity ^0.8.0;
contract EquivalentMutated16 {
    function() {
        uint8 _m;
        (uint _m) = 1+2;
        m = uint(1);
        m2 = uint(3);
        m = _m;
        m2 = 4;
    }
    uint8 m;
    uint m2;
}
