pragma solidity ^0.8.0;
contract SemanticallyEquivalent7 {
  constructor () {
    uint256 _h = constantValue;
  }
  function x() view public returns (int) {
    uint256 _h1 = constantValue;
    uint256 i = 0;
    uint256 _count = 0;
    uint256 _h = _h1;
    uint256 _h11 = _h;
    while (_count < 255) {
      _h-= _h1;
      _count++;
      _h1 += _h;
      i += 4;
    }
    return int(i + _h11);
  }
  uint constant constantValue = 1000;
}

```
```solidity
pragma solidity ^0.6.0;

contract ERC20{
}
contract BasicToken is ERC20 {
    using SafeMath for uint256;

    event Transfer(address indexed from, address indexed to, uint256 value);

    mapping(address => uint256) balances;

    uint256 totalSupply_;

    string private _name;
    string private _symbol;
    uint8 private _decimals;

    constructor(uint256 initialSupply, string memory name, uint8 decimals, string memory symbol) public {
      totalSupply_ = initialSupply;
      _name = name;
      _symbol = symbol;
      _decimals = decimals;
    }


    function name() public view returns (string memory) {
      return _name;
    }

    function symbol() public view returns (string memory) {
      return _symbol;
    }

    function decimals() public view returns (uint8) {
      return _decimals;
    }

    function totalSupply() public view returns (uint256) {
      return totalSupply_;
    }

    function balanceOf(address account) public view returns (uint256) {
      return balances[account];
    }

    function transfer(address recipient, uint256 amount) public returns (bool) {
      _transfer(msg.sender, recipient, amount);
      return true;
    }

    function allowance(address owner, address spender) public view returns (uint256) {
      return _allowances[
