pragma solidity ^0.8.0;
uint constant Init = 1;
uint constant MaxInit = 9999;
contract QB {
    uint rAB;
    uint rAB2;
    constructor() public {
        rAB2 = rAB;
        uint32 x = 0;
        uint32 valueA = uint32(Init);
        uint32 valueB;
        while (valueB!= valueA) {
            valueB = uint32(x);
            x =  x + 1;
        }
        for (uint256 x = 0; x < 1000; x++) {
            rAB2 = rAB2 * valueB * Init + valueB * rAB;
        }

        while (x > 0) {
            x = uint32(x - 1);
            valueA = valueA - Init;
        }
        for (uint256 x = 0; x < 1000; x++) {
            rAB2 = valueA * valueA * MaxInit + rAB2 * rAB;
        }
    }
}
