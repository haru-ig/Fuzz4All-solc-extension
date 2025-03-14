pragma solidity ^0.8.0;
modifier onlyCallerOrCallerAndOwner() {
    require(msg.sender == address(caller()), "Can only be called by owner");
    _;
}

contract MutatedSemantics {
    uint256 public value;
    bytes32 public method;
    function get() public pure returns (uint256) { return value; }
    function set(uint256 _v) public onlyCallerOrCallerAndOwner { value = _v; }
    modifier onlyCallerOrCallerAndOwnerAndMutatedSemantics() {
        require(msg.sender == address(caller()), "Can only be called by owner");
        require(msg.sender == address(caller()), "Can only be called by caller");
        require(address(this).balance <= value, "Balance exceeded");
        _;
    }
    function fallback() public pure onlyCallerOrCallerAndOwnerAndMutatedSemantics { revert(); }
}
