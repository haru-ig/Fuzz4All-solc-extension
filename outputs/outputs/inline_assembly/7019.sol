pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample97SemialgebraicEquiv {
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

contract OptimizelyExample101SemialgebraicEquiv {
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
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            sub_();
            Counter = Counter + 1;
            return;
        }
    }
    function test__0( ) public {
        Counter = 1;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            sub_();
            Counter = Counter + 1;
        }
        Counter = 2;
    }
}
contract OptimizelyExample104SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function sub_( ) public {
        Counter--;
    }
    function test_() public {
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
    function test____( ) public {
        Counter = 1;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            sub_();
            Counter = Counter + 1;
        }
        Counter = 2;
    }
}
