pragma solidity ^0.8.0;
contract ArrayMutationsBis5 {
    function addAndReturnSumOfIntegers(uint[] memory integers1, uint[] memory integers2) public returns (uint) {
        uint sum = getSumOfIntegers(integers1);
        for(uint i = 0; i < integers2.length; i++) {
            sum += integers2[i];
        }
        return sum;
    }
}

pragma solidity ^0.8.0;
contract ArrayMutationsBis6 {
    function addSumAndModSumEqualToIntensitiesAndReturnSums(uint[] memory integers1, uint[] memory integers2, uint[] memory expectedSums) public returns (uint[]) {
        uint[] memory sumAndModSum = addAndReturnSumOfIntegers(integers1, integers2);
        for(uint k = 0; k < expectedSums.length; k++) {
            if(!equal(sumAndModSum[sumAndModSum.length - 1], expectedSums[k])) {
                assembly {
                    let s := mload(expectedSums)
                    let sum := 0
                    let modSum := 0
                    for(let i := 0; i < mul(expectedSums.length, sizeof(uint)); ++i) {
                        sum := sum.add(mload(add(expectedSums, 32, mul(i, sizeof(uint)))));
                        modSum := modSum.add(mload(add(expectedSums, 40, mul(i, sizeof(uint)))));
                    }
                    mstore(expectedSums, sub(sum, modSum))
                }
            }
        }
        return expectedSums;
    }
    function addAndMultiplySumMultipliesAndReturnSumsAndModulateSumWithModulus(uint[] memory integers1, uint[] memory integers2, uint[] memory expectedSums, uint[] memory expectedModsumues) public returns (uint[]) {
        uint[] memory moduli = add(addAndReturnSumOfIntegers(integers1, integers2), addAndReturnSumOfIntegers(add(add(integers1, integers2), integers1), add(integers1, integers2))));
        for(uint k = 0; k < expectedSums.length; k++) {
            for(uint j = 0; j < expectedSums.length; j++) {
                expectedSums[k] *= expectedModsumues[j];
            }
            uint num = getSumOfIntegers(integers1);
            uint den = getSumOfIntegers(moduli);
            if(!equal(moduli[moduli.length - 1], expectedSums[k]) &&!equal(expectedSums[k], num) &&!equal(expectedSums[k] % den, 0)) {
                expectedModsumues[k] *= 10
