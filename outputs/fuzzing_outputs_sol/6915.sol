pragma solidity ^0.8.0;
interface Mutator {
}
contract Mutator is Mutator {
}
contract Basic {
    function test() public pure {
    }
}
contract Mutator is Basic {
}
contract FallbackContract {
    function mutatorFallback(uint _amount) public pure payable {}
}
contract Caller {
    function mutatorCallInternal(Mutator _mutator, address _from) external payable {
        _mutator.mutatorFallback(_from, msg.value);
    }
}
