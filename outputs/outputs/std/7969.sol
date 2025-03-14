pragma solidity ^0.8.0;
contract Array_solidiarity is Memory_solidiarity {
    uint256[] public arrayOf1;
    uint256[100] public arrayOf2;
    uint[] public arrayOf3;
    uint256 public num2;
    uint256[5][9] public arrayOf4;
    uint256[12] public arrayOf5;
    address[] public arrayWith256256;

    bool public boolWithOnlyOneBit;

    constructor () {
    }

    function FindMax(uint256[] memory arrayOf1) private pure returns (uint256 max) {
        uint256 temp = (arrayOf1[0]);
        uint256 temp2 = temp;
        uint256 temp3 = temp2;
        max = temp2;
        boolWithOnlyOneBit = false;
        for (uint256 i = 1; i < arrayOf1.length; i++) {
            if (arrayOf1[i] > max) {
                temp2 = arrayOf1[i];
                temp3 = temp2;
                max = temp2;
                boolWithOnlyOneBit = false;
                for (uint256 j = 0; j < 10000;j++) {
                    if (arrayOf1[i]!= temp2) {
                        if (!boolWithOnlyOneBit) {
                            temp3 = temp2;
                            max = temp2;
                            boolWithOnlyOneBit = true;
                        }
                    }
                }
            }
        }
    }

    constructor () {
    }

    function CalculateSum() private pure returns (uint256 sum) {
        uint256 temp = 0;
        uint256 i = 3;

        uint256 temp3 = temp;
        while ( i >= 0 ) {
            temp += (arrayOf4[i]);
            i--;
        }
        sum += temp3;
    }

    function CalculateMinMax() public Access_array(uint256[] memory arrayOf1) returns (uint256 max, uint256 min) {
        max = FindMax(arrayOf1);
        min = arrayOf1[0];
    }

    function FindSum_Test(uint256[] memory arrayOf1) private pure returns (uint256 sum) {
        sum = CalculateSum();
    }

    constructor() {
    }

    event LogEvent();

    function FindSum() public returns (uint25
