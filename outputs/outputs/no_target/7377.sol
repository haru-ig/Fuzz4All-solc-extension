pragma solidity ^0.8.0;
contract BugsABICoder5{
  uint8 public constant byteValueTrue=1;
  uint8 public constant byteValueFalse=0;
}
contract BugsABICoder6{

  address TestContract;
  constructor () {
    TestContract = new BugsABICoder6();
  }
  modifier onlyTest{
    if(msg.sender==address(this)!= test){
      revert();
    }
    _;
  }
  function TestFunction() public onlyTest returns(uint8){
    return 1;
  }
}
