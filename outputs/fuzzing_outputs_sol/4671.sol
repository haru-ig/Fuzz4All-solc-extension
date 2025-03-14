pragma solidity ^0.8.0;
contract Wrapper {
    address payable public payableTarget;
    function payableTargetAddress() public view returns (address payable) {
        return payableTarget;
    }
    function transfer(address payable _to) public returns (bool) {
        payableTarget = _to;
        return true;
    }
    receive() external payable {}
}
contract FallbackMutator {
    Mutator mutator;
    Wrapper w;
    address payable payableTarget;
    function __Mutator(){
        w = new Wrapper();
        mutator = new Mutator();
    }
    function() public{
        uint counter = mutator.shouldBe(1);
        counter = mutator.shouldBe(counter);
        uint counter2 = mutator.shouldBe(counter);
        mutator.receive();
    }
    function() external payable{
        uint counter = mutator.shouldBe(1);
        counter = mutator.shouldBe(counter);
        uint counter2 = mutator.shouldBe(counter);
        mutator.receive();
    }
    receive() external payable{
        uint counter = mutator.shouldBe(1);
        counter = mutator.shouldBe(counter);
        uint counter2 = mutator.shouldBe(counter);
        mutator.receive();
    }
}
