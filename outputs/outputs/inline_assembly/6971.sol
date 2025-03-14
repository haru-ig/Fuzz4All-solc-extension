pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample84 {
    uint112 public Counter = -12950076030903014554494;
    function isNegative() public view returns(bool){
        return Counter < 123456;
    }
    function notNegative() public {
        require(isNegative() && Counter > 123456);
        Counter = Counter - 1;
    }
    function increment() public {
        Counter += 1;
    }
    function doubleCounter(int128 a) public {
        increment();
        increment();
        increment();
        doubleCounter(a + 1);
        increment();
    }
}
