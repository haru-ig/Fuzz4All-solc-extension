pragma solidity ^0.8.0;
contract Modifications2 {
  uint256 public a;
  uint256 public b;
  constructor(uint256 _a, uint256 _b) public {
    a = _a + 512;
    b = _b - 512;
  }
}



pragma solidity ^0.5.0;
contract SimpleContract {
  event LogMessage(string message);
  mapping(address => uint256) balances;

  function deposit() public payable {
    address(this).balance;
    balances[msg.sender] += msg.value;
    emit LogMessage("msg.sender deposited "+msg.value.toString());
  }

  function withdraw(uint256 value) public returns (bool) {
    address(this).balance;
    return true;
  }
}



pragma solidity ^0.5.0;


library SafeMath {

  function mul(uint256 a, uint256 b) internal pure returns (uint256) {



    if (a == 0) {
      return 0;
    }

    uint256 c = a * b;
    require(c / a == b);

    return c;
  }


  function div(uint256 a, uint256 b) internal pure returns (uint256) {

    require(b > 0);
    uint256 c = a / b;


    return c;
  }


  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    require(b <= a);
    uint256 c = a - b;
