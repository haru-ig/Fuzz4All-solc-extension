pragma solidity ^0.8.0;
contract Mutator {
    address internal contractOwner;

    function become(Mutator mutator) external mutator {
        contractOwner = msg.sender;
        mutator.mutate();
    }

    function mutate() internal {
        if (Mutator.shouldBe(1) && msg.value == 1 ether && contractOwner == msg.sender) {
            revert();
        }
    }
}
