pragma solidity ^0.8.0;
contract Equivalent {
address public owner;
mapping (address => uint256) public balances;
uint256 t;
uint256 x;
uint256 num;
constructor() public {
  owner = msg.sender;
  balances[owner] = 1;
  num = 2;
  t = 4;
  x = 0;
}
function updateBalance (address _a) public {
  balances[_a] = balances[_a].add(1);
  num = num.add(1);
  t = t.add(1);
}
function printBalances () public returns (uint256[2]){
  return [  balances[msg.sender],   balances[owner] ];
}
function addZeroBalance (address[] memory _addr, uint256[] memory _amount) public {
  require(msg.sender == _addr[0]);
  for (uint256 i = 0; i < _amount.length; i++) {
    require(balances[_addr[i]] == 0);
    balances[_addr[i]] = balances[_addr[i]].add(_amount[i]);
  }
}
}
