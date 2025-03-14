pragma solidity ^0.8.0;
contract Modul {
    uint x;
    uint private y;

    modifier privateOnly {

      if (msg.sender == msg.sender) _;
    }

    function addX() public privateOnly {
      if (x == 0){
        x = 1;
      } else {
        x = x +1;
      }
    }

    function setY(uint y_) public onlyOwner {
        y = y_;
    }
}
