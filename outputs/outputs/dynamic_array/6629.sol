pragma solidity ^0.8.0;

contract T8FA_mutator_1503084978 {
    uint256 i;
    uint256[9] arrayWith191Items;
    uint256[9] array;

    constructor() public {


        for (uint256 j = 0; j < 9; j++) {
            array[j] = arrayWith191Items[j];
        }

        array = array[9.toUint256()[1.U1:].rev()];

        array[0] = 0;
        array[8] = 0;
        i = (uint256(i) + 1).U1;
    }
}
