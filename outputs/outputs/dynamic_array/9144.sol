pragma solidity ^0.8.0;
contract Father1 {
    uint256 public totalSupply = 7;
    uint256[] a = new uint256[](totalSupply+1);
    uint256[] b = new uint256[](10);
    function add(uint256 x, uint256 y) public { b[a.length] = a.push(x+y); }
}
pragma solidity ^0.8.0;
contract Child1 is Father1 {
    function add(uint256 x, uint256 y) public { a[a.length] = a.push(x-y); }
}
pragma solidity ^0.8.0;
contract Child2 is Child1 {
  uint256[10] a_;
  uint256[10] b_;
  uint256[] memory c;
  function add(uint256 x, uint256 y) public { uint256[1][10] memory memory1 = new uint256[1][10][]; if(1>a_.length) a_.length = ++a_.length; if(b_.length > 0) c.push(int256(b_.pop())); c[c.length] = b_.pop(); a_[a.length][b_[a.length]] = int256(x-y); }
}

pragma solidity ^0.8.0;

contract EtherToken {
  uint public _totalSupply;
  constructor(uint256 initialSupply, uint256 _totalSupply) {
    _totalSupply = _totalSupply;
    _supply(_totalSupply);
  }
  modifier isNotFrozen() { require(block.timestamp == _timeToFreeze[address(this)]); _; }
  function _supply(uint supplyAmount) internal { _totalSupply = supplyAmount;
    require(_totalSupply > 0);
  }
  function totalSupply() public view returns (uint256) { return _totalSupply; }
  function balanceOf(address account) public view returns (uint256) {
    if(account == address(0)) return 0;
    return _balances[account];
  }
  function transfer(address to, uint256 tokenAmount) public isNotFrozen returns (bool success) {
    if(to == address(0)) return false;
    _transfer(address(0), to, tokenAmount);
    return true;
  }
