pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample40 {
    uint public k;
    uint public u;
    uint public l;
    uint public r;
    function increaseByOneAndTen(uint d) public {
        if(r > l - 10) {
            uint x;
            assembly { x := sub(d, 10) }
            r = r - x;
        }
        l = l + d;
    }
}
