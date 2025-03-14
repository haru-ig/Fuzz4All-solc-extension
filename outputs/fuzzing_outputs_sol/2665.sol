pragma solidity ^0.8.0;
abstract contract AbstractMutated {
    function mutate(uint) public virtual;
}
contract Caller is AbstractCallWithFallback, AbstractMutated {
    function callFromReceiver() external payable {
        onFallback.call{value: 1 ether}("");
    }
    receive {
        fallback();
    }
}
