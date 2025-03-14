pragma solidity ^0.8.0;
contract MyContract {
    bytes memory testBytes;
    string memory  testString;
    uint   testUint;
    uint    testUint2;
    uint8   testUint8;
    address testAddress;
    IEvent  testEvent;
    modifier noDuplicateAddress(address _address) {
      require(testAddress == message.sender || _address!= testAddress);
      _;
    }
    constructor() {
      testString = "Hello World!";
      testUint = 10;
      testUint2 = 20;
      testUint8 = 80;
      testAddress = msg.sender;
      testEvent = IEvent(address(this));
    }
    function transferFrom(address _address, address _operator, uint _amount) public onlyContract  noDuplicateAddress(testAddress) noDuplicateAddress(_operator) {
      testAddress = _address;
      _operator.transfer(_amount);
    }
    constructor(uint _amount) public {
      testAddress = msg.sender;
      _amount;
    }
    function increase(uint _amount) public onlyContract  noDuplicateAddress(testAddress)  noDuplicateAddress(msg.sender)  {
      testAddress = msg.sender;
      _amount;
    }
    modifier ifLessThan(uint _lowerLimit, uint _amount, uint _upperLimit) {
      require(_lowerLimit <= _amount);
      testUint2 = _amount;
      _;
    }
    function increase2(uint _amount) public onlyContract ifLessThan(0, _amount, 100) {
      testUint2 = _amount;
      testUint = testUint + _amount;
    }
    modifier noThrow() {
      throw;
    } catch(error) external pure {
        require(false);
    }
}
