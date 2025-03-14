pragma solidity ^0.8.0;
contract Mutant
{
  address public x;

uint256[200] private x1;

  uint256 public x2;
  uint256 public x3;

uint256 public x4;

address public x5;
  uint256 public x6;
  uint256 public x7;

  constructor() { }

  function sendToParent(uint256 a, uint256 b) public {
      x1 = a;
      x4 = b;
    }

function callParent() public payable {
    x6 = x3;
    x2 = x1[2] + x4;

    assembly {
      let result := x := mload(0x40)
      ret(mload(add(result,add(32,add(24,x))))
     )
   }

    address payable _receiverAddress = payable(x7);

    uint256 _toSend = x4 * x2;
    _receiverAddress.transfer(_toSend);
    }
  receive() external payable {}
}

pragma solidity ^0.8.0;
contract Mutant
{
  uint256[200] private x1;

  uint256 public x2;
  uint256 public x3;

  uint256 public x4;

  uint256 public x5;

  uint256 public x6;

  uint256 public x7;

  constructor() { }






  function sendToParent(uint256 a, uint256 b) public {

      x1 = a;
      x4 = b;

    }


    address payable _receiverAddress = payable(x7);
  /* The following line changes the
