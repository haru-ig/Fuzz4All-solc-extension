pragma solidity ^0.8.0;
contract EthStorage {
    uint internal initialValue;
    uintValue = 0;
    uint increaseToValue = 666666;
    uint decreaseByValue = 123456789;
    uintValue += increaseToValue;
    uintValue -= decreaseByValue;
    uintValue *= increaseToValue;
    uintValue /= decreaseByValue;
    uintValue = divmod(increaseToValue, decreaseByValue)[0];
    uintValue = uAdd(increaseToValue, decreaseByValue);
    uintValue = uSub(increaseToValue, decreaseByValue);
    uintValue = uMul(increaseToValue, decreaseByValue);
    uintValue = uDiv(increaseToValue, decreaseByValue);
    function divmod(uint x, uint y) public pure returns (uint, uint) {
        (uint quotient, uint remainder) = div(x, y);
        return (quotient, remainder);
    }
    function uAdd(uint x, uint y) public pure returns (uint) {
        uint z = x + y;
        require(z >= x && z >= y, "SafeMath: addition overflow");
        return z;
    }
    function uSub(uint x, uint y) public pure returns (uint) {
        uint z = x - y;
        require(x >= y, "SafeMath: subtraction overflow");
        return z;
    }
    function uMul(uint x, uint y) public pure returns (uint) {
        uint z = x * y;
        require(x == 0 || (x == y), "SafeMath: multiplication overflow");
        return z;
    }
    function uDiv(uint x, uint y) public pure returns (uint) {
        require(y > 0, "SafeMath: division by zero");
        uint z = x / y;
        return z;
    }
}
