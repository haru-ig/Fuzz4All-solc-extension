pragma solidity ^0.8.0;
contract Mutator {
    bool test = true;
    function payWithFallback(address payable _receiver) public payable {
        if(test){
            revert("Something went wrong. Can't revert with a fallback");
        }
        _receiver.transfer(msg.value);
    }
}
