pragma solidity ^0.8.0;
contract BugsABICoder2_ABI is BugsABICoder2 {
  string public testString = "test";
  function setString (string newTestString) public {
    testString = newTestString;
  }
  function getString() public view returns (string memory){
    return testString;
  }
}
contract Bug_ABI_Contract {
  address testAddress;
  constructor (address test_) {
    testAddress=test_;
  }
  event TestEvent(
    uint256 indexed param_a,
    uint256 indexed param_b,
    uint256 indexed param_c
  );
  function fireEvent (uint256 param_a, uint256 param_b, uint256 param_c) public {
    emit TestEvent (param_a, param_b, param_c);
  }
  function eventTest () public view {
    emit TestEvent(23, 45, 13);
  }
}




contract Bugs_ABI {
  bool a;
  string testString="String 123";
  event TestEvent(address indexed owner, string name, string testString);

  function nonViewFunc() public { }

  function viewFunc() public view isNonViewFunction() { }

  function func1() public { }

  function func2() public { }

  function callWith(bool b) public view returns(bool){
    return b;
  }

  function callWithString(string memory s) public {
    emit TestEvent(this, "hi!", s);
  }

  modifier restricted {
    _;
  }
}
