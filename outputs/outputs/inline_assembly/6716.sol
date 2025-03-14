pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

	contract MixedContactsExample600 {
    uint64 internal x;
    constructor (uint64 a) public {
        internal a = a;
        x = a;
        uint64.div(x, 3, a);
    }
    function doSomething() public returns (uint256) {
        a *= 9;
        uint256 r = uint256.div(x, 6, a);
        return r;
    }
}
