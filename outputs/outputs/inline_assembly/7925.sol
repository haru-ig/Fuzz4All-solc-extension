pragma solidity ^0.8.0;
contract L30 {
    uint x = 1;
    uint y = 2;
    function mutating() public {
      if (true) {
        if (y > 3 * x) {
          x = y / x;
          y = x * 3;
        address(_to) = msg.sender;
        msg.sender.transfer(address(_from) + x);
      }
        x = 2;
        y = 4;
      } else if (address(this).balance > 12345) {
        x = x + 1;
        x = x + y;
        x = x + 8;
      } else if (address(this).balance < 12345) {
        uint w = address(this).balance + 1;
        settozero(w);
        uint x = w + w;
      } else;
    }
    function settozero(uint x) internal {
      x = 2;
    }
}
