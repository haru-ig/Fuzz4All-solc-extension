pragma solidity ^0.8.0;
contract EquivalentMethod {
  uint256 public a;
  uint8 public b;
  uint16 public c;
  uint32 public d;
  uint64 public e;
    function decreaseOne() internal {
      a -= 1;
    }
    function increaseOne() public payable {
      a += 1;
    }
    function decreaseThemAll () public {
    increaseOne();
    increaseOne();
    increaseThemAll();
    }
    function reduceThemAll() public {
    increaseOne();
    increaseThemAll();
    reduceThemAll();
    }
    function decreaseOneAndOne() public {
    decreaseAllThem();
    increaseBoth();
    decreaseOneAndOne();
    decreaseBoth();
    increaseOneAndOne();
    decreaseBoth();
    decreaseBoth();
    decreaseBoth();
    increaseZeroXTwos();
    }
    function increaseThemAll() public {
    increaseZeroXTwos();
    increaseTwosToTwenty();
    increaseTwentyToTwentySix();
    increaseXTwosToTwentyEight();
    increaseXThousandsToXThousandsAndTwentySix();
    increaseTwoHundred();
    increaseThreeHundred();
    increaseFourHundred();
    increaseFiveHundred();
    increaseSixHundred();
    increaseSevenHundred();
    increaseEightHundred();
    increaseTenHundred();
    increaseElevenHundred();
    increaseTwelveHundred();
    increaseThirteenHundred();
    increaseFourteenHundred();
    increaseFifteenHundred();
    increaseSixteenHundred();
    increaseSeventeenHundred();
    increaseEighteenHundred();
    increaseTwentyEightHundred();
    increaseTwentyTwoHundred();
    increaseTwentyThreeHundred();
    increaseTwentyFourHundred();
    increaseTwentyFiveHundred();
    increaseTwentySixHundred();
    increaseTwentySevenHundred();
    increaseTwentyEightHundred();
    increaseTwentyNineHundred();
    increaseHundredHundred();
    increaseEightTens();
    increaseNinesAndTwos();
    increaseNineTens();
    increaseNinePlusTens();
    increaseThousandTwos();
    increaseThousandTenth();
    increaseThousandNine();
    increaseThousandSeven();
    increaseThousandToXThousands();
}
