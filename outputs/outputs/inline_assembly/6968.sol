pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample84 {
    int128 public Counter = -129500760309030145544948;
    function getCounter(int128 x) public view returns (int128) {
        return Counter;
    }
    function increment() public {
        Counter += 1;
    }
    function reset(int128 toReset) public {
        Counter = toReset;
    }
}
