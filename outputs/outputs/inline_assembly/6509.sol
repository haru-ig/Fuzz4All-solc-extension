pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample69 {
    uint a;
    uint256 b;
    uint256 c;
    function setAB(uint256 d) public {
        a = d;
        b = d;
        c = d;
    }
}
function set(uint256 x) private {
    if (x < 1000) {
        x = 1000;
    }
    setAB(x);
    uint256 value;
    value += a;
    value += b;
    value += c;
    assert(b < value);
    assert(x == value);
}
