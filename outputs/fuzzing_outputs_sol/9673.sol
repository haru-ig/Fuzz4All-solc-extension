pragma solidity ^0.8.0;
contract CallReceiverModified {
    receive() external payable modifier receiver() {
        _;
        return;
    }
}
contract CallReceiverModified2 {
    receive() external payable {
        _;
        return;
    }
}
contract CallReceiverModifiers {
    receive() external payable {
        require(address(this).balance >= 50);
        _;
        return;
    }
}
