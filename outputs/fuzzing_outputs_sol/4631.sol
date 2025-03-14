pragma solidity ^0.8.0;
contract Mutator {
    uint public counter;
    function shouldBe(uint next) public {
        counter++;
        require(counter == next, "Counter should be the expected value");
    }
}
contract ContractCaller {
    event BanAddress(address indexed sender, address indexed address);

    function receive() external payable {
        address sender = msg.origin;
        require(msg.value > 0, "msg.value should be positive");
        BanAddress(sender, msg.sender);
        emit BanAddress(sender, msg.sender);
    }

}



pragma solidity ^0.8.0;
contract ContractCaller {
    event Counter(uint);
    mutator MutatorInstance;
    enum CounterState { Idle, Increasing, Decreasing }
    CounterState counter = CounterState.Idle;
    Modifier Countering(mutator contractInstance) {
        counter = CounterState.Increasing;
        _;
        counter = CounterState.Decreasing;
    }
    uint public counterValue;
    function counterIncrease() Countering(MutatorInstance) public {
        MutatorInstance.shouldBe(counterValue+1);
    }
    function counterDecrease() Countering(MutatorInstance) public {
        MutatorInstance.shouldBe(counterValue-1);
    }
    function counterRead() public view Countering(MutatorInstance) returns(uint) {
        return counterValue;
    }
    function shouldBe(uint next) public {
        require(counter == CounterState.Idle, "Should be Idle");
        counterValue = next;
        counter = CounterState.Idle;
    }
}
