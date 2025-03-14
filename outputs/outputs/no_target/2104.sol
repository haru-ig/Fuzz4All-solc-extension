pragma solidity ^0.8.0;
contract Modifications {
  uint256 public a{ uint256 1} a{1} a{ 1} public b;
  uint256 public c; uint256 public d;
}
address owner;
mapping (address => uint256) balanceOf;
contract Test {
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }
  function setOwner(address _newowner) public onlyOwner {
    owner = _newowner;
  }
  function() external payable {
    address receiver = msg.sender;
    setOwner(receiver);
  }
  function totalBalance() public view returns (uint256 balance) {
    return balanceOf[owner];
  }
}
