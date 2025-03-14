pragma solidity ^0.8.0;
contract fourth{
    event Event(uint a);
    function g() public pure returns (uint) {
        this.Event(0);
        return 10;
    }
}
