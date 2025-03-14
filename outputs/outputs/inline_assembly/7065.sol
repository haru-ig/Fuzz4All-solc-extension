pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample99SemialgebraicEquiv {
    uint256 public Counter;
    bool public isCalled;
    function sub_ () public {
        Counter--;
    }
    function test_ () public returns (uint256) {
        Counter++;
        if (isCalled) {
            Counter = Counter + 1;
        } else {
            isCalled = true;
            sub_();
            Counter = Counter + 1;
            return Counter;
        }
        Counter = Counter + 1;
        return Counter;
    }
}
contract OptimizelyExample99SemialgebraicEquiv1 {
    uint256 public Counter;
    bool public isCalled;
    function sub_ () public {
        Counter--;
    }
    function test_ () public returns (uint256)
