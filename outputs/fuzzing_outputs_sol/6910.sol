pragma solidity ^0.8.0;
contract Mutator {
    address payable defaultFallback;

    function () external payable {
        defaultFallback.transfer(msg.value);
    }
}
