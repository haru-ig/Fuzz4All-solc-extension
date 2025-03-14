pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample106SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    mapping(uint256 => bool) public value;
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
            value[10] = true;
            sub_();
            Counter = Counter + 1;
        }
    }
}
contract OptimizelyExample107SemialgebraicEquiv {
    uint256 public Counter;
    mapping(uint256 => bool) public value;
    constructor() {
        isCalled =
