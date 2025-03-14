pragma solidity ^0.8.0;
contract Mutator {
    modifier payableCheck {
        require(msg.value > 0);
        _;
    }

    function payWithFallback(address payable _receiver) public payable payableCheck{
        test = false;
    }
}
