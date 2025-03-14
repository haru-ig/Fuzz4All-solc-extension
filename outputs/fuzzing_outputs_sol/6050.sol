pragma solidity ^0.8.0;
contract EtherTesterMutated2 {
    receive { value(address(this).balance) payable {} }
}

pragma solidity ^0.8.0;
contract EtherTesterMutated3 {
    receive { data(1) }
}

pragma solidity ^0.8.0;
contract EtherTesterMutated4 {

    modifier onlyIfCalledBySender() {
        require(msg.sender == address(this));
        _;
    }
    receive() external payable onlyIfCalledBySender {}
}

pragma solidity ^0.8.0;
contract EtherTesterMutated5 {

    modifier onlyIfCalledBySender() {
        require(msg.sender == address(this));
        _;
    }
    function send() external payable onlyIfCalledBySender {
        uint amount = msg.value;
        msg.sender.transfer(amount);
    }
}

pragma solidity ^0.8.0;
contract EtherTesterMutated6 {

    receive { value(address(this).balance) }
}

pragma solidity ^0.8.0;
contract EtherTesterMutated7 {

    receive { address(new EtherTesterMutated3()).send.value(1)(msg.data) }
}
