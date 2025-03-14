pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample88Mutated {
    int128 public counter1;
    int128 public counter2;
    int128 public returnInt;

    constructor() public {
        counter1 = 1;
        counter2 = 1;
    }

    function getMyCounter1() public view returns (int128) {
        return counter1.add(1);
    }

    function getMyCounter2() public view returns (int128) {
        return counter2;
    }

    function setMyCounter2(  ) public {
        counter1 = counter1.add(1);
        returnInt = 1;
    }

    function increment(   ) public {
        counter2 = counter2.add(1);
    }

    function test(   ) private returns (int128) {
        counter1 = counter1.add(1);
        counter2 = counter2.add(1);
        return counter1;
    }
}
