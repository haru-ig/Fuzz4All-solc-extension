pragma solidity ^0.8.0;
contract Mutated {
  BasicMath internal math=BasicMath(0x237a38d0A855d29C775e5220b95A4F9C7E045A72);

  address payable payableTo;
  uint256 amount;

  modifier(uint256 _amount) {
    amount = _amount;
    _;
  }

  function() public payable {
    require(amount == msg.value);
    require(msg.value > 0);
    msg.sender.transfer(amount);
  }

  function setPayee(address payable _to, uint256 _amount) public onlyOwner payableTo {
    require(msg.sender == payableTo);
    payableTo = _to;
    amount = _amount;
  }

}
