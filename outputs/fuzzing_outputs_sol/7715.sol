pragma solidity ^0.8.0;
contract MutatedSemantics {
    address contractOwner;
    uint256 public value;
    bytes32 public method;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) public { value = _v; }
    function payable fallback() public payable pure { revert(); }

    function mutate() public {
        method = "mutate";
        try MutatedSemanticsFallback(address(this))().set(0);
        catch { revert(); }
    }
    function getMutatedMethod() public constant returns (bytes32) { return method; }
}


pragma solidity ^0.8.0;
contract Caller {
    address public contractAddr;
    uint256 public value;
    uint256 public expectedResult;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) public { value = _v; }
    function setExpectedValue (uint256 _v) public { expectedResult = _v; }
    function payable fallback() public pure returns (uint256) { return expectedResult; }
    function call() public { contractAddr.call{ value: 0.1 ether }(""); }
    function mutate() public { contractAddr.mutate(); }
    function getExpectedValue() public constant returns (uint256) { return expectedResult; }
}
