pragma solidity ^0.8.0;
contract HasFallback {
    function mutated() public payable {
        emit Mutated();
        address(this).balance;
    }
    event Mutated();
}

/
