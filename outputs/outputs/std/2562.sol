pragma solidity ^0.8.0;
contract HelloWorld2 {
    event Message();
    function setResult(uint newValue) public
    {
        emit Message();
        assert(newValue > 0);
    }
}
pragma solidity ^0.8.4;
library Math {
    function plus(uint x, uint y) pure internal pure returns (uint) {
        require(y > 0, "can only add positive integers");
        return x + y;
    }
    function minus(uint x, uint y) pure internal pure returns (uint) {
        require(y > 0, "can only subtract positive integers");
        return x - y;
    }
    function times(uint x, uint y) pure internal pure returns (uint) {
        require(y > 0, "can only multiply positive integers");
        return x * y;
    }
    function divideToIntegerSqrt(uint x) pure internal pure returns (uint) {
        require(x > 0, "can only divide by positive integers");
        uint y = x * 2 + 1;
        while (y > 1) {
            uint step = y / x;
            x = y;
            y = step;
        }
        return x;
    }
    function modulo(uint x, uint y) pure internal pure returns (uint) {
        require(y > 0, "can only divide by positive integers");
        return x % y;
    }
}
