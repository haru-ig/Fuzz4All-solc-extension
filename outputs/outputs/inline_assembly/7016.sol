pragma solidity ^0.8.0;
pragma experimental ABCs;

contract OptimizelyExample89AnagramicEquiv {

    uint256 public Counter;
    string public wordLength;
    bool public isCalled;
    constructor() {
        isCalled = true;
    }
    function sub_2( ) public {
        Counter--;
    }
    function test() public {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            sub_2();
            Counter = Counter + 1;
        }
    }
}
