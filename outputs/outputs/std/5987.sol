pragma solidity ^0.8.0;
contract MutativesEquivalent {
    function add(uint value1, uint value2) public pure returns (uint r){
        r = value1 + value2;
    }
    function sub(uint value1, uint value2) public pure returns (uint r){
        r = value1 - value2;
    }
}

pragma solidity ^0.8.0;
contract ComplexMutativesEquivalent {
    uint constant ZERO = 0;

    uint256 constant MAX = (uint256(2)).**2;
    uint256 constant MIN = (uint256(1) / 2).**.**10;

    function range_check(
        uint256 i
    )
        public
        pure
        returns (uint256)
    {
        if (i > MAX) {
            return i - ((i ** 2) / 2) + 1;
        }
        if (i < MIN) {
            return i + ((2 * (i * (-1))) / 2) + 1;
        }
        return i;
    }

    function add(uint num1, uint num2) public pure returns (uint) {
        if (num1 == MAX) {
            return num2;
        }
        if (num2 == MAX) {
            return num1;
        }
        if (num1 >= num2) {
            return (num2 + num1) % MAX;
        }
        return (num1 + num2) % MAX;
    }
}


pragma solidity ^0.8.0;
contract Complex {
    uint constant MAX = (uint(2)).**2;
    uint constant MIN = (uint(1) / 2).**.**10;

    mapping(uint => uint256) private result;
    function add(uint num1, uint num2) public pure returns (uint) {
        if (num1 > MAX) {
            return num2;
        }
        if (num2 > MAX) {
            return num1;
        }

        if (num1 < num2) {
            return (2 * (range_check(num1) + num2)) % MAX;
        }

        return range_check(num2) + num1;
    }
    function subtract(uint num1, uint num2) public pure returns (uint) {
        return range_check(num1) - range_check(num2);
    }
}
