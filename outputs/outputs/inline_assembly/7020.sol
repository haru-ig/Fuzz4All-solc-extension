pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample109SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function sub_() public {
        Counter--;
    }
    function test() public {
        Counter++;
        uint x;
        if (isCalled) {
            Counter = Counter + 1;
            x = 1;
        } else {
            isCalled = true;
            x = 2;
            sub_();
            x = x + 1;
            Counter = Counter + 1;
            return;
        }
        uint y = 1;
        Counter = Counter + 2;
        x = x + 1;
        Counter = Counter + 1;
        return;
    }
}
contract OptimizelyExample
