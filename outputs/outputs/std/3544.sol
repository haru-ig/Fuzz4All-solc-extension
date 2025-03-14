pragma solidity ^0.8.0;
contract Test {
    function minimumOfNumbers(
        uint256[] storage numbers1,
        uint256[] storage numbers2
    ) public {
        uint256 min = numbers1[0];
        uint256 index;
        for (uint256 i = 1; i < numbers1.length; i++) {
            if (min > numbers1[i]) {
                min = numbers1[i];
                index = i;
            }
        }
        uint256 minIndex = index;
        for (uint256 i = 1; i < numbers2.length; i++) {
            if (min > numbers2[i]) {
                min = numbers2[i];
                minIndex = i;
            }
        }
        for (uint256 i = 0; i < numbers1.length; i++) {
            if (minIndex > i) {
                uint256 tempVar;
                tempVar = numbers1[i];
                numbers1[i] = numbers1[minIndex];
                numbers1[minIndex] = tempVar;
            }
        }
    }
}
