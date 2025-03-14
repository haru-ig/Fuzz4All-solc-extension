pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_249d69f093c0f4b2b352a0a88258fd0e009858296
{
    constructor () public {
        uint[] memory _b = new uint[](2);
        _b[0] = _b[0] + 1;
        _b[1] = 2;
    }
    function f() public {
        uint[] memory _b = new uint[](2);
        _b[1] = 2;
        _b[0] = _b[1] + 1;
    }
}


abstract contract Ownable {
    event OwnershipSet(address indexed previousOwner, address indexed newOwner);
    mapping(address => bool) public _owners;
    address public _owner;
    address public _previousOwner;


    modifier onlyOwner() {
        if (msg.sender!= _owner) _currentAccessDenied();
        _;
    }


    modifier onlyOwnerOrPrevious() {

        _checkIfOwnerIsPrevious();
        _;
    }


    modifier onlyIfPreviousOwner() {
        _checkIfOwnerIsPrevious();
        _;
    }
