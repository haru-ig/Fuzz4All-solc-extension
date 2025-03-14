pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample88SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        if (Block.timestamp < 1512868480) {
            Counter++;
        } else {
            Counter--;
        }
    }
    function test( ) public {
        if (isCalled) {
            Counter++;
        } else {
            isCalled = true;
            1;
            Counter++;
        }
    }
}
