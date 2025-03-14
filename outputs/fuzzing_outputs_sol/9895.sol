pragma solidity ^0.8.0;
contract Old {
    function old(uint _a) pure public returns(address) {
        return address(3*_a);
    }
    function fallback() public payable {
        return;
    }
}
