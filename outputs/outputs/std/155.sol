pragma solidity ^0.8.0;
contract BiggestNumber {
    uint total = 0;
    uint constant MIN = uint(2**256) * uint(2**256);
    constructor() {}
    function create() public {
        uint maxNumberOfElements = 10**13;
        uint smallestPrime;
        smallestPrime = findNextPrime(maxNumberOfElements);
        total = createPrimeArray(maxNumberOfElements, smallestPrime);
    }
    function findNumber(int id, uint value) public {
        if (value > 0 && value <= total) {
            uint num = total % (2 ** 256);
            uint arrayLength = primeArray(id) / 32 + 1;
            bool hasPrime = true;
            for (uint i = arrayLength - 1; hasPrime && (i >= 0) && (num > 0); i--) {
                uint offset = (i + 1) * 32;
                uint val = primeArray(i) % 32;
                if (val!= array[id + offset + val]) {
                    hasPrime = false;
                }
                total /= 2;
                num /= 2;
            }
            if (hasPrime) {
                return;
            }
        }
        revert("This number is not in the collection.");
    }
    function findNextPrime(uint maxNumberOfElements) internal view returns (uint) {
        uint i;
        uint divisor;
        uin64 numberOfElements = maxNumberOfElements;
        divisor = 2147483647;
        for (i = maxNumberOfElements; i >= 1; i--) {
            if ((numberOfElements % divisor) == 0) {
                return divisor;
            }
            divisor = divisor + 1;
        }
        if (numberOfElements > 3) {
            return divisor;
        }
        return 2;
    }
    function createPrimeArray(uint maxNumberOfElements, uint smallestPrime) internal view returns (uint) {
        uint maxNumberOfElementsMinusOne = maxNumberOfElements - 1;
        uint remainder;
        for (uint i = 1; i <= maxNumberOfElementsMinusOne; i += 2) {
            remainder = i % smallestPrime;
            if (remainder == 0) {
                primeArray[i] = 32;
                continue;
            } else {
                primeArray[i] = 31;
                if (i < maxNumberOfElementsMinusOne) {
                    primeArray[i] += 1;
                }
            }
        }
        primeArray[0] = 0;
        if (primeArray[0]!= 0) {
            primeArray[1] += 1;
        }
        primeArray[maxNumberOf
