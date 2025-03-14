pragma solidity ^0.8.0;
contract Caller {
    function call(Receiver receiver) public {
      address caller = msg.sender;
      receiver.toggle()
      address state = receiver.state;
      uint eth_transferred = address(this).balance;
      receiver.toggle();
      require(state == States.Fallback, 'Caller: Contract shouldn\'t be callable!');
    }
}
