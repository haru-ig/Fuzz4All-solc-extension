pragma solidity ^0.8.0;
contract Mutator {
    struct Counter {
        uint counter;
    }
    function shouldNotBe(Counter memory counter) public {
        counter.counter++;
    }
}



pragma solidity ^0.8.0;
contract Sender {
    mutator MutatorStorage;
    struct Counter {
        uint counter;
    }
    Counter memory Counter;


    function __Child() internal view {
        if (msg.value > 0) {
            Counter.counter++;
            emit CounterChanged(msg.sender, Counter.counter);
        }
    }
    receive() external payable {}


    function fallback_receive() external payable {
        if (address(MutatorStorage) == msg.sender) {
            MutatorStorage.shouldBe(Counter);
        } else {
            Counter.counter++;
            emit CounterChanged(msg.sender, Counter.counter);
        }
    }

    constructor() {
        MutatorStorage = MutatorStorage(msg.sender);
        Counter.counter = 0;
    }


    event CounterChanged(address indexed sender, uint256 indexed counter);
}

contract Caller {
    Sender SenderStorage;

    function __CallSender() internal view {
        uint amount = msg.value;
        if (amount > 0) {
            SenderStorage.SenderStorage.getContractAddress(); /* This is just an example. Usually we don't have a sender, contract, or Ether contract (0x00000000000000000
