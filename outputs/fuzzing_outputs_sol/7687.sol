pragma solidity ^0.8.0;
contract Mutation
{
    uint256 public value;
    function setx(uint256 _x) public
    {
        require(value!= _x);
        value = _x;
    }
    bytes32 public myMethod = "z";
    function mutation() public pure { revert(); }
}

pragma solidity ^0.8.0;
contract Caller
{
    uint256 public value;
    bytes32 public myMethod = "k";
    function set(uint256 _v) public { value = _v; }
    function semanticEquivalenceCall() public call
    {
        value = value + 1;
    }
    function semanticEquivalenceCall2() public { value = value + 1; }
}
