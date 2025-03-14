pragma solidity ^0.8.0;
contract Modify {

}

contract FallbackContract {
    modifier payable {
        require(msg.value == 0);
        _;
    }
    function fallback() external payable {
        msg.sender.transfer(msg.value);
    }
}
contract MutationContract {
    address internal receiver__;
    constructor(address receiver) {
        receiver__ = receiver;
    }
    modifier payable {
        require(msg.value == 0);
        _;
    }
    function mutate() external {
        uint256 value = 0;
        receive();
        unchecked {
            value = 1337;
            receiver__.transfer(value);
        }
    }
}

contract CallerContract {
    MutationContract internal receiver__;
    contract Mutator {
        function mutate() external payable;
    }
    modifier mutatorPayable {

        require(_isMutator(msg.sender));
        _;
    }
    function fallback() external {
        unchecked {
            Mutator mutator = new Mutator();
            mutator.mutate.value(0)();

            mutatorPayable;

            Receiver.recv();
            Msg.sender.transfer(1 ether);
        }
    }
    function () external payable {

        unchecked {
            receiver__ = new MutationContract(msg.sender);
            msg.sender.transfer(10 ether);
            receiver__.mutate();
        }
    }
    bool private _isMutator(address addr) private returns (bool) {
        return addr == 0x23f707d2168d5165b4e2d54307c3554c3285d578;
    }
}

contract Receiver {
    function recv() external {
    }
}
