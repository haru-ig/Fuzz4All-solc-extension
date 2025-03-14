pragma solidity ^0.8.0;
contract C {

  address payable to;
  mapping (address => uint) users;
  constructor(address payable payee) public {
    to = payee;
  }
  function sendIn(address payable a, uint b) public {
    a.transfer(b);
    users[msg.sender] = b;
    from(msg.sender);
    from(a);
  }
  function checkUserBalance() public view returns (uint) {
    return users[msg.sender];
  }
  function from(address a) private {
    address payable b = address(uint160(uint256(a) >> 248));
    users[b]++;
    to.transfer(users[b]);
  }
}
