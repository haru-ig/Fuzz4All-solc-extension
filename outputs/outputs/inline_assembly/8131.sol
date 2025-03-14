pragma solidity ^0.8.0;
contract Mutated5 {
  uint256 public constant TOTAL_DRINK_PRICE = 1 * 10 ** 18;
 event UpdatePrice(uint256 _newPrice, uint256 _numDrinks);
  constructor () public {
    emit UpdatePrice(TOTAL_DRINK_PRICE, 1);
  }
  modifier isNotPaused () {
    require(paused == false);
    _;
  }
  function withdrawBalance() public isNotPaused {
    address payable owner = payable(owner());
    owner.transfer(address(this).balance);
  }
}
