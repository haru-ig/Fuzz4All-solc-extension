pragma solidity ^0.8.0;
contract MutatedContract1 {
    uint constant minValue = 0;
    uint constant increment = 1;
    uint constant maxValue = 99;

    uint public mutatedResult =
        minValue + increment + minValue + increment +
          minValue + increment + minValue + increment +
        minValue + increment + minValue + increment;

    uint public mutatedResult2 = (increment * increment * increment * increment) / increment;

    uint public mutatedResult3 = (increment * max(minValue + increment, maxValue)) + (increment * max(minValue + increment, maxValue));

    uint public mutatedResult4 = max((increment * increment * increment), increment, decrement, minValue, maxValue, 5);

    uint public mutatedResult5 = 5 + (10 * (10 / 10));

    function min(uint x, uint y) public view returns (uint) {
        if (x < y) return x;
        return y;
    }
}
