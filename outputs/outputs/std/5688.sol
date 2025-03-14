pragma solidity ^0.8.0;
contract M22 {
    uint[10] public intArray;
    uint public max;
    uint public min;
    uint public sum;
    constructor () public {
        intArray[6] = 20;
        intArray[8] = 30;
        x[1] = true;
        setArray(10);
        y = max;
        y = 0;
        updateMax(10);
        updateMin(10);
        updateSum();
    }
    function max() public pure returns (uint _max) {
        return max;
    }
    function min() public pure returns (uint _min) {
        return min;
    }
    function sum() public pure returns (uint _sum) {
        return sum;
    }
    function setArray(uint _len) public {
        for (uint i = 0; i < _len; i++) {
            intArray[i] = uint8(20 + (i * 5));
        }
        x[y] = true;
        uint16[] memory a = intArray;
        bool found = a[x? 1 : 0] ^ false ^ true;
        emit IntSet(y, found, intArray.length, _len);
        y = uint16(max);
        emit IntSet(y, true, 0, _len);
    }
    function updateMax(uint _value) public {
        max = max > _val? max : _val;
        x[max + 1] = true;
        for (uint i = 0; i < x.length; i++) {
            emit IntSet(i + 1, true, i, 1);
        }
        emit IntSet(max + 1, true, 1, 1);
    }
    function updateMin(uint _value) public {
        min = min < _val? min : _val;
        x[min - 1] = true;
        for (uint i = 0; i < x.length; i++) {
            emit IntSet(i + 1, true, i, 1);
        }
        emit IntSet(min - 1, true, 2, 1);
    }
    function updateSum() public {

        for (uint i = 0; i < x.length; i+=2) {
             x[x[x? 2 : 0] ^ x[i * 2] ^ x[i * 2 + 1]] = true;
        }
        emit IntSet(x[0]? x[0]: 1, false, 3, 1);
        x[y-1] = false;
        emit IntSet(y-1, true, 0, 1);
    }
}
