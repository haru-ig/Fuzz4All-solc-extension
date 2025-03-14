pragma solidity ^0.8.0;
contract MixedContactsExample505 {
    uint56 x;
    uint56 a;
    uint56 b;
    uint56 c;
    uint56 d;
    uint56 e;
    uint56 y;
    event SoMEvent(uint value, uint64 count);
    mapping(uint256 => uint256) public a_;
    function doSomething() public returns (uint64) {
        a *= 8;
        b *= 68;
        bool x3 = x % 3 == 0;
        c *= 948;
        d *= 87;
        if(!x3) {
            b += 5;
        }
        e *= 7;
        if(a_ == 0) {
            a_ += 1;
        }
    }
}
