pragma solidity ^0.8.0;


contract MutatedExample84 {
    function doSomething(int128 toReturn) public returns (int128) {
        MutatedExample84.Counter += toReturn;
        return MutatedExample84.Counter;
    }
}
