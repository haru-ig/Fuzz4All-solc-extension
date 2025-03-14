pragma solidity ^0.8.0;
contract EquivalentGoodCase15 {
    uint m;
    uint8 m2;
    uint8[] memory a;
    uint8[12] memory b;
    uint[3] memory c;
    uint[] memory d;
    uint8[] memory e;
    uint16[5] memory f;
}

pragma solidity ^0.8.0;

contract EquivalentGoodCase16 {
    uint256 x;
    uint[10] foo;
    function f() public pure { this.transfer(address(this).balance >> 2); }
}
contract EquivalentGoodCase17 {
    uint[18, 16] foo;
}
contract EquivalentGoodCase18 {
    uint[42] foo;
}
contract EquivalentGoodCase19 {
    uint f1, s1;
    uint f2, s2;
    function f() public pure { this.call.value(this.balance)(); }
}

pragma solidity ^0.8.0;
contract EquivalentGoodCase2 {
    uint a;
    uint x;
    uint[] memory y;
    uint8 x8;
    function f() public pure { x = a >> 2; }
}

pragma solidity ^0.8.0;
contract EquivalentGoodCase3 {
    uint256 a;
    uint[50] memory b;
    uint32 y;
    uint8 u;
    uint8 v;
    uint p;
    function f() public pure { this.transfer((this.balance & 0x1) == 1? (this.balance / 2) : this.balance - (this.balance & 0xff)); }
}
contract EquivalentGoodCase4 {
    uint[256] memory bar;
    uint[] memory foo;
    uint8[] memory x;
    uint[] memory x;
}
