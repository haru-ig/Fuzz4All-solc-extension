pragma solidity ^0.8.0;
import "../../../contracts/SemanticEquality_ArrayMutations6.sol";
contract SemanticEquality_ArrayMutations6_Contract
{
    SemanticEquality_ArrayMutations6 _myInstance = new SemanticEquality_ArrayMutations6();
    bool _isValid = true;
    constructor() public {
        uint256 x = _myInstance.a[0];
        a[0] = x;
        _myInstance.a[0] = ((x)*(x)) / (x + 10);
        _isValid = (((_myInstance.a[0]) - (208)) / (4096 - (_myInstance.a[0]))) >= 3);
    }
}
