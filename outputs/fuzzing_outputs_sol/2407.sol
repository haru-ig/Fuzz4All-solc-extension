pragma solidity ^0.8.0;
contract CallMe {
  function call() public payable {
    var sender1 = 1;
    function call1() public {
      var sender2 = 2;
      function call2() public {
        var sender3 = 3;


        sendEth(address(this), 5);
      }
      call2();
    }
    call1();
  }
  function sendEth(address to, uint amount) public payable {
  }
}
