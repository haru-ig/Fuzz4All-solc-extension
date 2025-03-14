pragma solidity ^0.8.0;
contract T8FA_mutator_0xf_mutator {
    mapping (address => bool) public mappings;
    uint8 constant dataValue = 0;
    uint256 constant valueOne = 0;
    uint256 constant valueTwo = 2;

    uint8 constant valueFive = 5;
    uint256 constant valueSeven = 7;
    address constant addressThree = 0x0290fe785ef09a2d64ca28d68a7b83794ab375d5;

    constructor () public {
        mappings[addressThree] = false;
    }

    function setMappingA(mapping (uint8 => uint8) memory data) public {
        mappings[addressThree] = true;
        data[4] = 4;
        uint256 v = data[6];
        mappings[addressThree] = false;
        mappings[addressThree] = true;
        data[10] = 8;
        mappings[addressThree] = false;
        data[1] = (data[1] + 1);
        mappings[addressThree] = false;
        mappings[addressThree] = true;
    }

    function setMappingB(mapping (address => uint8) memory data) public {
        mappings[addressThree] = true;
        data[addressThree] = 4;
        uint256 v = data[addressThree];
        mappings[addressThree] = false;
        mappings[addressThree] = true;
        data[addressThree] = 8;
        mappings[addressThree] = false;
        mappings[addressThree] = true;
    }

    function setMappingC() public {
        uint8 v = 4;
        mappings[addressThree] = true;
        mappings[addressThree] = false;
        while (v > 0) {
            v = v / 3;
            v--;
        }
        mappings[addressThree] = true;
        data[8] = 3;
        mappings[addressThree] = false;
        mappings[addressThree] = true;
        v = 2;
        mappings[addressThree] = true;
        while (v < 5) {
            v++;
            mappings[addressThree] = false;
        }
        mappings[addressThree] = true;
    }
}
