pragma solidity ^0.8.0;
contract Mutator {
    event Modified(uint indexed counter);
    function shouldBe() public returns (bool) {
        Modified(uint(0));
        return true;
    }
    function onModify(uint _counter) public {
        _counter++;
        Modified(_counter);
    }
}
