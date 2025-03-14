pragma solidity ^0.8.0;
interface ExampleInterface {
    function callFallback() external payable returns (bytes memory);
}
interface ExampleInterface2 {
    function callFallback() external;
}
contract Example3 {
    ExampleInterface public exampleInterface;
    uint256 public number;
    address public address;

    constructor(ExampleInterface exampleInterface, uint256 number, address address) {
    }

    function sayNumber() external {
        number++;
        emit EmitEvent(number);
    }

    function callFallback() external payable {
        bytes memory data = abi.encode(msg.data);
        address contractAddress = address(this);
        address sender = msg.sender;
        address recipient = address(this);
        uint256 gas = 20000;
        uint256 amount_wanted = 100000000;

        ExampleInterface2 call = ExampleInterface2(contractAddress);

        require(address(this).call{value: amount_wanted}(data), "Not enough Ether");
        require(call.callFallback(), "Failure in callFallback()");

        emit CallEvent(sender, recipient, gas, address(this));
    }
}
