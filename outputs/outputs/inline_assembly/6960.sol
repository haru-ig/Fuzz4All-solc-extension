pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample84_semanticallyEquivalent {
    int128 Counter = 0;
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample84_longer {
    int128 Increment = 999999;
    uint64 CountDown = 7;
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample84_allFeatures {
    int128 Counter = 999999;
    int128 Increment = 99;
    uint64 CountDown = 7;
    constructor() {
        Counter = 1;
        Increment = 1;
        CountDown = 11;
    }

    function increment() public returns (int128) {
        int128 toReturn = Increment;
        toReturn = Counter + toReturn;
        return toReturn;
    }

    function decrement() public returns (uint64) {
        uint64 toReturn = CountDown + 1;
        CountDown = toReturn - 1;
        return toReturn;
    }

    function countDown() public returns (uint64) {
        uint64 toReturn = CountDown;
        CountDown = toReturn - 1;
        return toReturn;
    }

    function decrementWithNoRepetitions() public returns (int128) {
        int128 toReturn = Counter + 1;
        Counter = toReturn - 1;
        return toReturn;
    }

    function incrementWithNoRepetitions() public returns (uint64) {

        Counter += 1;
        return 0;
    }

    function setAndReturnIncrement(int128 increment) public returns (int128)  {
        Increment = increment;
        return Increment;
    }

    function setAndReturnCounterAndGetIncrement() public returns (int128, int128)  {
        int128 result;
        result = Increment;
        Increment = Increment + 1;
        return (result, Increment);
    }

    function setAndReturnIncrementAndGetCountDown(int128 increment, uint64 countDown) public returns (int128, uint64)  {
        Increment = increment;
        CountDown = countDown + 1;
        return (Increment, CountDown);
    }

    function getAnd
