pragma solidity ^0.8.0;
contract MutateCaller {
    uint public constant value = 13;
    receive() external payable {
        require(msg.value == message.value);
    }
}

pragma solidity ^0.8.0;
contract MutateContract {
    uint internal constant _VALUE = 28;

    constructor() {



    }

    fallback() external payable {


        msg.sender.transfer(_VALUE);
    }

    receive() external payable {



    }
}
