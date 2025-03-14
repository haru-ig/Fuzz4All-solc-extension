pragma solidity ^0.8.0;
contract Address {
    constructor (uint256) internal { }
    address payable constant caller = payable(1);
    uint256 constant value = 1;
}
contract Caller {
    function sendToCaller(uint amt) public {
        caller.call{value: amt}("");
    }
}
