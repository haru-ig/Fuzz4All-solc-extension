pragma solidity ^0.8.0;
contract Receiver {
    function receiveE() external payable {}
}
contract Mutator is Receiver {
    function shouldBe(uint counter) internal {
        counter++;
        payable(address(this)).receiveE();
    }
    mutatorFallback() external payable {
        receiverFallback();
    }
    function receiverFallback() public {
        receiveE();
    }
}


contract ContractBugTest is Mutator, Mutator {
    constructor() public { }
    function shouldBe(uint counter) public override shouldBe(counter) { }
}
