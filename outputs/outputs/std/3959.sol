pragma solidity ^0.8.0;
contract Multiprecision {
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
    function subtract(uint a, uint b) public pure returns (uint) {
        return a - b;
    }
    function multiply(uint a, uint b) public pure returns (uint) {
        return a * b;
    }
    function divide(uint a, uint b) public pure returns (uint) {
        if (a == 0) {
            return 0;
        }
        return a / b;
    }
    function isZero(uint a) public pure returns (bool) {
        return a == 0;
    }
    int a;
    int b;
    uint resultA;
    uint resultB;
    uint expectedResultA;
    uint expectedResultB;

    function mod(int a, uint b) public pure returns (uint) {
        if (isZero(b)) {
            return a % b;
        }
        if (a < 0) {
            a = a % b + b;
        }
        return a;
    }

    function isPositive(int a) public pure returns (bool) {
        return a >= 0;
    }

    function isGreaterThan(int a, int b) public pure returns (bool) {
        return a > b;
    }

    function isLessThan(int a, int b) public pure returns (bool) {
        return a < b;
    }

    function sum() public {
        uint result = add(add(a, b), 16);
        uint expectedResult = add(add(a + b, 16), 21);

        uint compareResult = add(a, b);

        assert(compareResult == result);
        assert(result == expectedResult);
    }
}

pragma solidity ^0.8.0;
contract Array {
    bool[5] b = [true, true, false, false, true];
    uint[5] u = [1, 2, 3, 4, 5];

    function sum() public view returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < 5; i++) {
            sum += u[i];
        }

        uint result = isZero(sum)? sum : add(add(sum, 13), 39);

        uint expectedResult = add(isZero(sum)? sum : add(sum + 13, 39), 48);
        assert(sum == expectedResult);
        return result;
    }

    function minimum() public view returns (uint) {
        uint min = 0;
        for (uint i = 0; i < 5; i++) {
            if (b[i]) {
                if (isLessThan(u[i], min)) {
                    min = u[i];
                }
            }
        }
        uint result = b
