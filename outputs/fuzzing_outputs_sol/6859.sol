pragma solidity ^0.8.0;
contract A {
    address target;
    constructor(address sender) payable {
        target = sendSomeEtherTo(sender, 1 ether);
    }
    function sendSomeEtherTo(address caller, uint256 amount) private view returns (address x) {
        x = caller;
        (bool success, ) = sendAndCall.value(amount)(x, new bytes(0));
        assert(success);
     }
     receive() external payable {
     }
}
contract B is A {
    uint256 public constant constantFee = 1000000000;
    function sendAndCall(address _to, bytes memory _value) internal returns (bool) {
     uint256 initialBalance = _to.balance;



     uint256 result = _to.call{value: _value}(_value);

     assert(_to == address(this));
     assert(result);

     receiver(address(this), initialBalance);
     return true;
   }
   receive() public payable {
    uint256 amount = msg.value;
    assert(msg.value >= amount);
    uint256 amountToAdd = amount - constantFee;
    target.transfer(amountToAdd);
  }
  function receiver(address payable receiver, uint256 amount) {
    receiver.receive(amount);
  }
}
