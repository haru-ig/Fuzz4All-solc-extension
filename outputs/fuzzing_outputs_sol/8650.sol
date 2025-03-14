pragma solidity ^0.8.0;
contract Mutator3 {
    function f() public returns (uint256) {
        uint256 initialBalance = address(1).balance;
        address payable beneficiary = address(this);
        beneficiary.transfer(1);
        uint256 difference = beneficiary.balance - initialBalance;
        if (difference > 0) {
            return 1;
        }
        return 0;
    }
}
contract Caller {
    uint256 value;
    bytes memory message;
    uint256 result;

    constructor(uint256 _value, bytes memory _message) {
        value = _value;
        message = _message;
    }
    receive() external {
        value++;
        revert("Revert");
    }
    function f() public {
        result = call(keccak256(message));
    }
    function call(uint256 value) public {
        uint256 sum = value + value;
        require(sum == value);
        value = sum + value;
        sum += sum;
        message = abi.encodePacked(sum);
    }
}
