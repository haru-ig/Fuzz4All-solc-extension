pragma solidity ^0.8.0;
contract Returns {
    function returnValue() public pure returns (uint) { return 0; }
}

pragma solidity ^0.8.0;
contract LowLevelTransfer {


    address payable recipient;

    function lowLevelTransfer() public payable {}

    function doIt() public {
        recipient.transfer(msg.value);
    }

    fallback() external {
        recipient.transfer(msg.value);
    }

    receive() external payable {
        recipient.transfer(msg.value);
    }
}
