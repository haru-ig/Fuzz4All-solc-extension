pragma solidity ^0.8.0;
contract Mutator {
    uint _balanceEarned;
    uint256 _amountToTransfer;
    string _recipientAddress;

    receive() external payable {
        _balanceEarned += msg.value;
        _amountToTransfer = msg.value;
        _recipientAddress = msg.sender;
    }
}

pragma solidity ^0.8.0;
contract CallerFallback {
    uint _balanceEarned;
    uint256 _amountToTransfer;
    string _recipientAddress;

    receive() external payable {
        _balanceEarned += msg.value;
        _amountToTransfer = msg.value;
        _recipientAddress = msg.sender;
    }

    function transfer() public {
        if (msg.value > 0) {
            _balanceEarned += msg.value;
            _amountToTransfer = msg.value;
            _recipientAddress = msg.sender;
        } else {

            fallback();
        }
    }
}
contract Contract_21 {
    function foo() public {
        if (4 < 3) {

            new CallerFallback();
        } else {
            Mutator mutator = new Mutator();
            mutator.transfer();
        }
    }
}
