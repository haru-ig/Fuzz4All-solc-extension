pragma solidity ^0.8.0;
contract CallByValueMutated {
    receive() external payable {
        self.value(msg.value);
    }
    function value(uint256 _value) external payable {
    }
    fallback() external payable {}
}
contract InitialCallerByValue {
    uint256 x;
    receive() external payable {
        x += 1;
        self.value(20);
    }
    function value(uint256 _value) external payable {
    }
}
