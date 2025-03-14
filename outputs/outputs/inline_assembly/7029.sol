pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;
contract Example98SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    constructor( ) {
        isCalled = true;
    }
    function sub_() public {
        Counter--;
    }
    function semialgebraicEquivTest( ) public {
        Counter++;

        Counter = Counter + 1;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            sub_();
            Counter = Counter + 1;
            return;
        }
        if (Counter!=
