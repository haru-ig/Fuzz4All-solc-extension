pragma solidity ^0.8.0;
contract CallerMutated {
    uint a=1;
    address payable aAddr=address(uint256(42));
    function mutated_(address payable _addr) public pure {
        _addr.transfer(20);
    }
}
