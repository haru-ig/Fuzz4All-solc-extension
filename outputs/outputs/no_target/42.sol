pragma solidity ^0.8.0;
contract BasicToken {
    using IERC20 for IERC20.This;
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
}

pragma solidity ^0.8.0;
abstract contract IVariableToken is IERC20 {
}

pragma solidity ^0.8.0;
contract FoggyToken is IVariableToken {
    string public constant name = "Foggy";
    string public constant symbol = "FG";
    uint8 public constant decimals = 18;

    bytes32 public constant version = "202106261234";
    uint256 public constant INITIAL_SUPPLY = 100000000 * (10 ** uint256(decimals));

    constructor() {
        *address payable(msg.sender) = msg.sender;
        *address payable(address(this)) = msg.sender;
        *address payable(address(0)) = msg.sender;
        add(*address(0));


        _mint(msg.sender, INITIAL_SUPPLY);
    }
    function add(address newToken) public onlyOwner() {
        _addToMap(address(newToken));
    }
}

pragma solidity ^0.8.0;
contract Ownable {
    address private _owner;
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    constructor() {
        _owner = msg.sender;
        emit OwnershipTransferred(address(0), _owner);
    }

    modifier onlyOwner() {
        require(msg.sender == _owner);
        _;
