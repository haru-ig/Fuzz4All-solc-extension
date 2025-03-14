pragma solidity ^0.8.0;
contract MutatedGeneration18 {
    mutating function generate() public {
        uint256 numberOfMutations;

        (uint256[] memory numbersArray, uint256 number) = generate();
        (numbersArray, uint256 number2) = generate();
        (numbersArray, uint256 number3) = generate();

        numberOfMutations = 3*numberOfMutations1;
        numberOfMutations += 2*numberOfMutations2;
        numberOfMutations += 3*numberOfMutations3;

        (uint256[] memory numbersArrayAfterOneIteration, uint256 number4) = generate();

        printNumberOfIterations();
        printArraySize(numbersArray);
        printArraySize(numbersArrayAfterOneIteration);
    }

    function generate() public pure returns (uint256[] memory, uint256) {
        uint256 max = 1e9;
        uint256 min = 99;
        uint256 maxIterations = 14;

        uint256 i;
        uint256 j;

        uint256[] memory array1 = new uint256[](max - min);

        for (i = min; i <= max; i++) {
            array1[i - min]++;
        }

        for (i = min; i < maxIterations; i++) {
            for (j = min; j < max; j++) {
                array1[j] = array1[j] ^ array1[j + 1];
            }
            uint256 value = array1[maxIterations - 1 - i];
            if (value < max - i) {
                array1[i] = i;
            } else {
                array1[i] = max - i;
            }
        }

        uint256 maxElement;
        uint256 lastElementIndex = maxIteration() - 1;
        maxElement = array1[lastElementIndex];

        return (array1, maxElement);
    }

    function printArraySize(uint256[] memory array) public pure {
        bytes32 length;
        (uint256 elementLength) = uint256.decode(abi.decode(array, (bytes32)));
        length = 32;
        uint256 encodedLength = encodeLength(length);
        assembly {
            mstore(0, encodedLength)


            mstore8(add(array, 0x40), encodedLength)
        }
    }


    function encodeLength(uint256 length) private pure returns (bytes32 encodedLength) {
