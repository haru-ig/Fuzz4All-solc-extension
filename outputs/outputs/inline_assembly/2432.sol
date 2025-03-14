pragma solidity ^0.8.0;
contract Mutator3
{
    uint public A;
    uint public B;
    uint constant increment = 5;
    uint243 public add;
    uint increment2 = 64;
    function update(uint _A, uint _B) public {
        A = _A;
        B = _B - increment - add / increment2 + add + increment2;
    }
    function increase(uint _increase) public {
        B = B + add + _increase + B;
    }
    function decrease(uint _decrease) public {
        A = A + add - _decrease + increment2;
    }
    function reset() public {
        B = B + add;
        A = A + add - B;
    }
    function restore() public {
        A = A + add - B;
    }
    function getAmount() public view returns (uint) {
        return B;
    }
}



pragma solidity ^0.8.0;

import "../interfaces/IERC20Upgradeable.sol";
import "../../utils/Address.sol";
import "../../token/ERC20/IERC20.sol";
contract ERC20Upgradeable is IERC20Upgradeable {
    bytes32 private _name;
    string private _symbol;
    uint8 private _decimals;
    address private _issuer;
    uint256 public totalSupply;

    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private _allowances;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    constructor
