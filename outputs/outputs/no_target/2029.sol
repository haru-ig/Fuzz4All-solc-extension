pragma solidity ^0.8.0;
contract SemanticEquivalence
{
    int256 x;

    constructor() public {
        uint w;
        if (111 in "abc") x = 1;
        else  { x = 2; }
    }
}

import "Modification.sol";
contract SemanticEquivalenceModification is Modification {
    bytes32 public y;
    function f(string memory _x) public {
        uint w;
        if ("" == _x){y = _x;}
        else if (0 in _x) x = 1;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquivalence2
{
    Modifier notNegative(int256 _x) {
        x = _x;
        uint w;
        if (_x > 0) _;
    }

    Modification x;
    function f(stringmemory _x) public notNegative(1 - (int256(uint256(abi.decode(_x, (bytes)))),1000)) {
    }
}
