pragma solidity ^0.8.0;
contract Mutator {
  uint256 public constant initialValue = 10;
  bool public constant modifier isReverted() {
    require(false);
    _;
  }

  uint256 public incrementedValue;

  function() public payable {incrementedValue += 10;}

  constructor() {
    setAddress(0, address(0));
  }
    function divide(uint256 _left, uint256 _right) public view returns(uint256){
      incrementedValue = divide(_left, _right);
      uint8 i = 0;
      while (incrementedValue > initialValue && i < 4) {
        address addr = settableAddresses[uint256(incrementedValue)];
        require(addr!= address(0), "address zero");
        decrementedValue = incrementedValue - divide(initialValue, 10);
        setAddress(incrementedValue, addr);
        incrementedValue = decrementedValue - divide(20, 10);
        i++;
      }
      require(i < 4, "value");
      return incrementedValue;
    }
}
