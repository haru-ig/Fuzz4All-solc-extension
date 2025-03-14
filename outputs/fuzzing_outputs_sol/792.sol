pragma solidity ^0.8.0;
contract ReceiverModificationExample{
  address public receiver;
  uint public x;
  receive () external payable {
    receive ();
  }
  function modify16() public {
    x++;
  }
  function modify15() public {
    x--;
  }
  function modify14() public {
    x *= 2;
  }
  function modify13() public {
    x /= 2;
  }
  function modify12 () public {
    x += 2;
  }
  function modify11() public {
    x -= 2;
  }
  function modify10() public {
    receiver.transfer(2 * x);
  }
  function modify9 () public {

    if (receiver == msg.sender) {
      uint x2 = 50;

      require (receiver!= msg.sender, "Error: Can not call sender!!");
    }
  }
  function modify8 () public {
    receiver.transfer(2 * x);
  }
  function modify7 () public {

    uint x2 = 50;

    require (receiver!= msg.sender, "Error: Can not call sender!!");
  }
  function modify6 () public {

    uint x2 = 50;

    require (receiver!= msg.sender, "Error: Can not call sender!!");
  }
  function modify5 () public {

    uint x2 = 50;

    require (receiver!= msg.sender, "Error: Can not call sender!!");
  }
  function modify4 () public {

    uint x2 = 50;

    require (receiver!= msg.sender, "Error: Can not call sender!!");
  }
  function modify3 () public {

    uint x2 = 50;

    require (receiver!= msg.sender, "Error: Can not call sender!!");
  }
  function modify2 () public {

    uint x2 = 50;

    require (receiver!= msg.sender, "Error: Can not call sender!!");
  }
  function modify1 () public {

    uint x2 = 50;

    require (receiver!= msg.sender, "Error: Can not call sender!!");
  }
  function modify0 () public {
    receiver.transfer(2 * x);
  }
}
