pragma solidity ^0.8.0;
contract Callers {
    function sendEther() public returns (bool) {
        this.transfer(msg.value);
        return true;
    }
}

pragma solidity ^0.8.0;
contract Receivers {
    receive() external payable {}
    function sendEther() public returns (bool) {
        this.transfer(msg.value);
        return true;
    }
}
contract ReturnValues {
    function sendEther() external payable returns (bool) {
        this.transfer(msg.value);
        return true;
    }
}
