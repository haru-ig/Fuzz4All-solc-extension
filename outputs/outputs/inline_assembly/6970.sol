pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample88 {
    uint256 public Counter = 19226487555227265798039720;
    function getCounter(uint256 x) public view returns (uint256) {
        return Counter;
    }
    function increment() public {
        Counter += 1;
    }
    function reset(uint256 toReset) public {
        Counter = toReset;
    }
}
