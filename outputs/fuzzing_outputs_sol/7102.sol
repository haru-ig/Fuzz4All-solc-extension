pragma solidity ^0.8.0;

contract CallerMutator {
    constructor() {
    }
    function __Mutate__() public {
        require(hasFallback || msg.value == 0, "not fallback");
        hasFallback = true;
    }
    function __Mutate__() public {
        uint256 _amount1 = 1;
        uint256 _amount2 = 2;
    }
    receive() public payable {
    }
}
