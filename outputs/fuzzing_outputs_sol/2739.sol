pragma solidity ^0.8.0;
contract MutatedCaller {
    uint payable public balance_;
    uint public numBytes_;

    constructor(uint initialBalance) {
        balance_ = initialBalance;
        numBytes_ = 562;
    }

    fn() external payable {
        bytes memory data = new bytes(1);
        uint value = msg.value;
        balance_ += value;
        numBytes_ += data.length;
    }

}

pragma solidity ^0.8.0;
contract MutatedCaller2 {
    uint public payable0_ = 562;

    uint payable public balance_;
    uint public numBytes_;

    function() external payable {
        bytes memory data = new bytes(1);
        balance_ += msg.value;
        numBytes_ += data.length;
        if (msg.value > 0) {
            payable0_ -= msg.value;
        }
    }
}
