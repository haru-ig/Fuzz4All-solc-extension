pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Example97SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor() {
        isCalled = true;
        Counter = 0;
    }
    function sub_() public {
        Counter--;
    }
    function test_ () public {
        Counter++;
        isCalled = false;
        sub_();
        Counter = sub_( ) - sub_( ) * 2;
        isCalled = true;
        Counter = Counter + 1;
    }
    function test__ () public {
        Counter++;
        Counter = _sub() + 1;
        Counter = 2;
    }
    function _sub_() private view returns( uint256 ) {
        return Counter - 1;
    }
}
contract Example101SemialgebraicEquiv {
