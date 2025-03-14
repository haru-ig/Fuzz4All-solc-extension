pragma solidity ^0.8.0;
contract EquivalentArithmetic103 is EquivalentArithmetic101 {
    function sub(uint num1, uint num2) public pure returns (uint) {
        return num1 - num2;
    }
}
contract EquivalentArithmetic104 is EquivalentArithmetic100, EquivalentArithmetic102 {
    function max(uint num1, uint num2) public pure returns (uint) {
        return num1 > num2? num1 : num2;
    }
}
contract EquivalentArithmetic105 is EquivalentArithmetic104 {
    function max(uint num1, uint num2) public pure returns (uint) {
        return num1 > num2? min(num1, num2) : num2;
    }
}
contract EquivalentArithmetic106 {
    uint max(uint num1, uint num2) public pure returns (uint) {
        return num1 > num2? num1 : num2;
    }
    uint min(uint num1, uint num2) pure returns (uint) {
      return num1 < num2? num1 : num2;
    }
}
contract EquivalentArithmetic107 is EquivalentArithmetic106 {
    uint sub(uint num1, uint num2) public pure returns (uint) {
        return num1 - num2;
    }
}
contract EquivalentArithmetic108 {
    uint sub(uint num1, uint num2) public pure returns (uint) {
        return num1 - num1;
    }
}
contract EquivalentArithmetic109 {
    uint sub(uint num1, uint num2) public pure returns (uint) {
        return num1 + num2;
    }
}
contract EquivalentArithmetic110 {
    uint sub(uint num1, uint num2) public pure returns (uint) {
        return num1 * num2;
    }
}
contract EquivalentArithmetic111 {
    uint sub(uint num1, uint num2) public pure returns (uint) {
        return num1 / num2;
    }
}
contract EquivalentArithmetic112 is EquivalentArithmetic110 {
    uint mul(uint num1, uint num2) pure public returns (uint) {
        require(num2 > 0);
        uint product = 1;
        while (num2 > 0) {
            if ((num2 & 1) > 0) {
                product *= num1;
            }
            num1 *= num1;
            num2 = num2 >> 1;
        }
        return product;
    }
}
contract EquivalentArithmetic113 {
    uint add(uint num1, uint num2) public pure returns (uint) {
        return num1 +
