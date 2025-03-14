pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract SemanticallyEquivalentSolidity {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
        this.Counter;
        this.Counter;
    }
    function sub_() public {
        Counter--;
    }
    function test() public {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            sub_();
            Counter = Counter + 1;
            return;
        }
    }
}
contract SemanticallyEquivalentSolidity001 {
    uint256 public Counter;
    uint256 public Counter__0;
    bool public isCalled;
    constructor() {
        isCalled = true;
        Counter;
        Counter__0;
    }
    function sub_() public {
