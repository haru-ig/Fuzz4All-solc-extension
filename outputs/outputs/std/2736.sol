pragma solidity ^0.8.0;
contract Comparison {
    uint8 nine;
    uint8 constant sixteen = 16;
}
contract Integer {
    uint8 constant zero = 0;
    uint8 constant one = 1;
    uint8 constant two = 2;
    uint8 constant nine = 9;
    uint8 constant oneToSeven = 10;
    uint8 constant twenty = 20;
    uint8 constant ten = 10;
    uint8 constant fiftyTwenty = 5002;
    uint8 constant thousand = 1000;
    uint8 constant hundred = 100;
    uint8 constant thousandThirty = 20003;
    uint8 constant tenThousandsThirty = 100003;
    uint8 constant twoHundredAndThree = 200003;
}
contract Math {
    uint8 constant zero = 0;
    uint8 constant one = 1;
    uint8 constant two = 2;
    uint8 constant nine = 9;
    uint8 constant oneToSeven = 10;
    uint8 constant twenty = 20;
    uint8 constant ten = 10;
    uint8 constant fiftyTwenty = 5002;
    uint8 constant thousand = 1000;
    uint8 constant hundred = 100;
    uint8 constant thousandThirty = 20003;
    uint8 constant tenThousandsThirty = 100003;
    uint8 constant twoHundredAndThree = 200003;

    uint8 constant minusNine = int(-9);
    uint8 constant minusOneToSeven = int(-10);
    uint8 constant minusTwenty = int(-20);
    uint8 constant minusTen = int(-10);
    uint8 constant minusFiftyTwenty = int(-5002);
    uint8 constant minusThirty = int(-20003);
    uint8 constant minusTenThousandsThirty = int(-100003);
    uint8 constant minusTwoHundredAndThree = int(-200003);

    uint256 constant half = 150;
    uint256 constant full = 150000000;
    uint256 constant minusHalf = 150000001;
    uint256 constant minusFull = half - one * 1e12;
}
contract Memory {
    bytes16 internal bytes16Contract;
    bytes56 internal bytes56Contract;
}
contract Multiprecision {
    uint224 constant twoHundredMillion = 0x0014000000000000000000000000000000000000000000000000000014112;
    uint224 constant oneHundredMillion = 0x0014000000
