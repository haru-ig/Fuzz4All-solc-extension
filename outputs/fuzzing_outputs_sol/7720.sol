pragma solidity ^0.8.0;
contract MutatedSemantics {
    uint256 private value;
    bytes32 public method;
    function set(uint256 _v) public { value = _v; }
    function get() public returns (uint256) { return value; }
    function fallback() public pure { revert(); }
}

pragma solidity ^0.8.0;
contract MutatedSemanticsCaller {
    uint256 public value;
    bytes32 public method;
    function set(uint256 _v) public { value = _v; }
    function get() public returns (uint256) { return value; }
    contract Caller {
        function () public payable {}
        receive () public payable {}
    }
}
