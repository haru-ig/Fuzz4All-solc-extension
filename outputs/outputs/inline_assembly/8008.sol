pragma solidity ^0.8.0;
contract MultipleArguments5{
    uint x = 0;
    uint y = 1;
    uint z = 2;
    function multipleArguments5() public view returns (uint, uint, uint) {
        return (x, y ^ 2, z);
    }
    function multipleArguments5Set(uint _c1, uint _c2, uint _c3) public {
        uint memory _x = _c1 * _c2 * _c3;
        x = _x;
        if (_c1 == 0 && _c2 == _c3) {
            y = 0x0;
        } else {
            y = y;
            z = _x + _c1 + _c2 + _c3;
            if (_c1 == 0 && _c3 == _c2) {
                y = 1;
            }
        }
    }
}
```

**Example 18.25:** Doing `calldata` allows you to inject arbitrary data into a constructor call.

_Output:_
```
function SimpleERC20(string memory name_, string memory symbol_) public {
  if (name_.length > 0) name_ = name_;
  if (symbol_.length > 0) symbol_ = symbol_;
  owner = msg.sender;
}

function () public payable {
  if (msg.value > 0) balances[msg.sender] = balances[msg.sender] + msg.value;
}

contract SimpleERC20 is ERC20 {
    address public owner;
    mapping (address => uint) public balances;
    string public name;
    string public symbol;

}

contract Token is SimpleERC20{
    constructor (string memory name_, string memory symbol_) public SimpleERC20(name_, symbol_) {  balances[msg.sender] = 0; }
}

contract TokenMinting is Token {
    function () public payable {
      require(msg.value > 0);
      balances[msg.sender] = balances[msg.sender] + msg.value
