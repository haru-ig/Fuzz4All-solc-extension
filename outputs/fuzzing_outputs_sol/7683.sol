pragma solidity ^0.8.0;
library Compatibility {
    uint256 public constant FallbackValue = 1 ether;

    function set(uint256 _v) public pure {
        revert();
    }

    function semanticEquivalence() public pure override { revert(); }
}
pragma solidity ^0.8.0;
contract Semantics
{


    function fallback() public pure returns(uint256) {
        return Compatibility.FallbackValue;
    }
}
contract Caller
{
    semantics ^semantics;
    bytes32 public name;



    fallback() public nonpayable { semantics.semanticEquivalence(); revert(); }

    constructor() { name = "Caller"; }

    function setName(bytes32 _name) public {name = _name; }

    function getSemantics() public view returns(semantics) {
        return semantics;
    }

    function callSemantics() public returns (uint256) {
        semantics = semantics.set(caller.value);
        return semantics.value;
    }
}
contract Test is Caller
{
    function test0() public returns(uint256) {
        bytes32 _name;
        semantics = semantics.set(caller.name);
        semantics.setName(_name);
        return semantics.value;
    }
}
