pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample88SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function sub_1(  ) public {
        Counter--;
    }
    function test( ) public {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            sub_1();
            Counter = Counter + 1;
        }
    }
}
