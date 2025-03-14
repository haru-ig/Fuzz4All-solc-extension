pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample84 {
    int128 public Counter = 9995833579222533964017803;



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
