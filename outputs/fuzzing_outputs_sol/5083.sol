pragma solidity ^0.8.0;
contract Caller {
    function caller() public returns (uint) {
        uint x;
        assembly { x := calldatacopy(0, 40) }
        return x;
    }
}
