pragma solidity ^0.8.0;
contract Original {
mapping(address=>uint256) private _balances;
bool private _isContract;
constructor () {
_isContract=true;
}
function balance() public view returns (uint256){
return _balances[msg.sender];
}
receive() external payable {}
function deposit() public payable {
if (!isContract()){
assert(_balances[msg.sender] == 0);
_balances[msg.sender] = msg.value;
}
}
function withdraw(uint256 value) public {
require(value <= _balances[msg.sender]);
uint256 toWithdraw = _balances[msg.sender];
_balances[msg.sender] = 0;
msg.sender.transfer(toWithdraw);
}
function() external payable {
deposit();
}
function isContract() public view returns (bool) {
return _isContract;
}
}

Address not working

Address not working

Address not working
Address not working
Address not working
Address not working
Address not working
Address not working
