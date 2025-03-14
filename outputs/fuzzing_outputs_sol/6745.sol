pragma solidity ^0.8.0;
contract Caller {
    uint public value;
    uint constant a = 3;
    uint constant b = 5;
    function CallMut() external returns (uint) {
        value = a + b;
        bytes1 data1;
        assembly { data1 := 0 }
        uint x = value;
        require(x == value, "x is not equals to value");
        emit SendA(data1);
        return value;
    }
    function SendA(bytes1 data) external {
        emit SendACopy(data);
    }
    event SendACopy(bytes data);
}
