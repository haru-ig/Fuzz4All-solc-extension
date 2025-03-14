pragma solidity ^0.8.0;
contract ArraysMutated1 {
    function mutated() public {

        uint[2][2] memory array = [
            [2,3],
            [4,5],
        ];

        uint256[2] memory secondMostArray = array[1];


        array[1] = array[0];



        uint[2][2] storage arrayCopy = array;
        arrayCopy.sub(1, arrayCopy.sub(0, 1));

        for (uint i = 0; i< array.length; i++){
            for (uint j = 0; j< array[i].length; j++) {
                array[i][j]++;
            }
        }

        uint[2] storage subArrayCopy = array.sub(1, array.sub(0, 1));
    }
}
