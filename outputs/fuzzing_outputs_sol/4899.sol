pragma solidity ^0.8.0;
contract Mutator {
    bool test = true;
    address payable _receiver;
    function payWithFallback(address payable receiver) public payable {
        if(test){
            revert("Something went wrong. Can't revert with a fallback");
        }
        _receiver.transfer(msg.value);
    }
}
