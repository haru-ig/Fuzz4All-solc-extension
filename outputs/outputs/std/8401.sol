pragma solidity ^0.8.0;
contract ArrayMutations {
    mapping (address => uint[]) private testMemory;
    uint[] private testArray;
    uint private sumOfNegativeNumbers;

    function getAllMemoryValueAddresses(address addr) public view returns (uint[] memory, uint[]){
        return (testMemory[addr], testArray);
    }

    function add(uint[] memory addends) public {
        testArray.push(getSum(addends));
    }

    function subtract(uint[] memory subtrahends) public {
        uint sum1 = 0;
        uint sum2 = 0;
        uint sum3 = 0;
        for (uint i = 0; i < subtrahends.length; i++){
            sum1 += subtrahends[i];
            if (subtrahends[i] < 0){
                sum2 += subtrahends[i];
            }
        }
        for (uint j = 0; j < subtrahends.length; j++){
            sum2 += subtrahends[j];
        }
        testArray[testArray.length - 1] = sum1 - sum2 + 1;
    }

    function multiply(uint[] memory multiplicands) public {
        uint sum = 0;
        for (uint i = 0; i < multiplicands.length - 1; i++){
            if (multiplicands[i] < 0){
                for (uint j = 0; j < multiplicands.length - 1 - i; j++){
                    sum += multiplicands[i + j];
                }
            } else {
                sum += multiplicands[i];
            }
        }
        testArray[testArray.length - 1] = sum;
    }

    function divide(uint[] memory dividends) public {
        uint sum1 = 0;
        uint sum2 = 0;
        for (uint i = 0; i < dividends.length - 1; i++){
            sum1 += dividends[i];
        }
        for (uint j = 0; j < dividends.length - 1; j++){
            sum1 += dividends[j];
        }
        for (uint j = 0; j < dividends.length - 1; j++){
            sum2 += dividends[j];
        }
        testArray[testArray.length - 1] = sum1 / sum2;
    }

    function sumNegativeNumbersInArray() public {
        sumOfNegativeNumbers = 0;
        for (uint i = 0; i < testArray.length; i++){
            if (testArray[i] < 0){
                sumOfNegativeNumbers += testArray[i];
            }
        }
    }

    function testAdditionAndSubtraction() public {
        uint negativeNumbersCount = 0;
        for (uint i = 0; i < testMemory.length; i++){
            if (testMemory[i].length > 0){
                uint sum1 = getSum(test
