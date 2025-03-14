pragma solidity ^0.8.0;
contract ArrayMutationsBis2 {
    function getSum(uint[] memory integers) public pure returns (uint) {
        uint sum = 0;
        uint len = integers.length;
        for(uint i = 0; i < len; i++) {
            sum += integers[i];
        }
        return sum;
    }
}

pragma solidity ^0.8.0;
contract ArrayMutActionsBis5 {
    event OnSet(uint [] integers);
    event OnPlus(uint [] integer);
    event OnMinus(uint [] integer);
    event OnMult(uint [] integer);
    event OnDiv(uint [] integer);
    event OnEqual(uint [] integer);
    event OnLess(uint [] integer);
    event OnLessOrEqual(uint [] integer);
    event OnGreaterOrEqual(uint [] integer);
    event OnGreater(uint [] integer);
    event OnSwap(uint from, uint to);
    event OnRandomize(uint [] integer);
    constructor() external {}
    function set(uint n, uint[] storage dest) public {
        uint len = dest.length;
        dest[n] = 7;
        emit OnSet(dest);
        if(len > n) {
            for(uint i = 0; i < len; i++) {
                if(dest[i] > dest[n])
                    dest[i]--;
            }
        }
    }
    function plus(uint n, uint[] memory dest) public {
        uint len = dest.length;
        dest[n] += 5;
        emit OnPlus(dest);
        if(len > n) {
            for(uint i = 0; i < len; i++) {
                if(dest[i] >= dest[n])
                    dest[i]++;
            }
        }
    }
    function minus(uint n, uint[] memory dest) public {
        uint len = dest.length;
        dest[n] -= 5;
        emit OnMinus(dest);
        if(len > n) {
            for(uint i = 0; i < len; i++) {
                if(dest[i] <= dest[n])
                    dest[i]--;
            }
        }
    }
    function mult(uint n, uint[] memory dest) public {
        uint len = dest.length;
        dest[n] *= 5;
        emit OnMult(dest);
        if(len > n) {
            for(uint i = 0; i < len; i++) {
                if(dest[i]|0 >= dest[n])
                    dest[i]++;
            }
        }
    }
    function div(uint n, uint [] memory dest) public {
        uint len = dest.length;
        dest[n] /= 0;
        emit OnDiv(dest);
        if(n < len) {
            for(uint i = 0; i <
