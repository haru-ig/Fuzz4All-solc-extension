pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
mapping(address=>uint256) balances;
address public owner;
bool public paused = false;
bytes32 public constant admin = bytes32(0x8080808080808080);
event SetOwner(address _prevOwner, address _newOwner);
constructor() {
  owner = msg.sender;
}
modifier onlyOwner() {
    require(isOwner());
    _;
}
modifier onlyAdmin() {
    require(isAdmin(), "onlyAdmin: not admin");
    _;
}
function isAdmin() public view returns (bool) {
  return msg.sender == admin;
}
function setOwner(address _newOwner) public onlyAdmin {
  emit SetOwner(owner, _newOwner);
  owner = _newOwner;
}
function transferOwnership(address _newOwner) public onlyOwner {
  emit SetOwner(owner, _newOwner);
  owner = _newOwner;
}
function balanceOf(address tokenOwner) public view returns (uint256 balance) {
    return balances[tokenOwner];
}
function transfer(address to, uint256 amount, string memory _data) public {
  require(isOwner(), "onlyOwnable: not owner");
  balances[to] = balances[to].sub(amount);
  _transfer(owner, to, amount);

}
function transferFrom(address from, address to, uint256 amount, string memory _data) public {
  _transfer(from, to, amount);

}
function _transfer(address tokenHolder, address tokenReceiver, uint256 amount) private {
  if(paused) return;
  balances[tokenHolder] = balances[tokenHolder].sub(amount);
  balances[tokenReceiver] = balances[tokenReceiver].add(amount);
  emit Transfer(tokenHolder, tokenReceiver, amount);
}
}
