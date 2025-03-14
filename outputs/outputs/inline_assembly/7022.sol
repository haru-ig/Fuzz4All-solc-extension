pragma solidity ^0.8.0;
contract OptimizelyExample113SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function sub_( ) public {
        Counter--;
    }
    function test( ) public {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            sub_();
            Counter = Counter + 1;
            return;
        }
        Counter = 2;
    }
}

pragma solidity ^0.8.0;
contract OptimizelyExample115SemialgebraicEquiv {
    uint256 public Counter;
