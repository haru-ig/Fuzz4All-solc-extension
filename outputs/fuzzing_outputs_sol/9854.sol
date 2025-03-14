pragma solidity ^0.8.0;
contract Mutant  {
    uint public i;
    /**
    modifier receivesOnlyEther {
        require(msg.value > 0, "onlyEther");
        _;
    }
    receive() public {
        i--;
        if (i == 0) {
            i = 1;
        }
    }
}
