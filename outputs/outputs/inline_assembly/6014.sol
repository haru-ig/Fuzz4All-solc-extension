pragma solidity ^0.8.0;
contract EquivalentAssemblyExample {
    struct Input {
        uint256 num1;
        uint256 num2;
    }
    Input external input;
    address internal resultAdder = msg.sender;
    uint256 internal totalSum;
    constructor (Input memory _input) {
        input = _input;
        totalSum = 1;
    }
    function add() public {
        uint256 added = addInternal();
        emit ResultAdded(msg.sender, added);
        input = Input(input.num1 + input.num2, input.num1, input.num2);
        resultAdder = msg.sender;
    }
    function addInternal() internal returns (uint256 added) {
        added = input.num1 + input.num2;
    }
    receive() external payable {}
    event ResultAdded(address indexed buyer, uint256 value);
}
contract EquivalentAssemblyExample1 {
    struct Input {
        uint256 num1;
        uint256 num2;
    }
    Input external input;
    uint2
