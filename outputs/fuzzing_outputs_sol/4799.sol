pragma solidity ^0.8.0;
contract FallbackArithmetic {
    function addition(uint256 a, uint256 b) public pure returns (uint256 c) {
        c = a + b;
    }
}
contract Caller {

    function callMath(uint256 a, uint256 b) public returns (uint256 c) {
        c = a + b;
        uint256 result = c;
        return result;
    }
}
contract Math {
    uint result;

    function calculate() public {
        result = 5;
    }

    function pureMethodOfMath() pure public returns (uint result)
    {
        return 42;
    }
}
contract Contract {
    function fallback(uint256 _value) external payable {
        if (address(this).balance >= _value) {
            uint256 balance = address(this).balance;
            _value = 2 * _value;
            address(this).transfer(_value);
        } else {
            selfdestruct(msg.sender);
        }
    }
}
contract Fallback {
    uint256 public value;

    function fallback() external payable returns (uint256) {
        return value;
    }
}
