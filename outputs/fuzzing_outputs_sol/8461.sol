pragma solidity ^0.8.0;
contract CallerExample2 {
  function callerReturnBool2(uint _x) public view returns(bool) {
    return true;
  }
  function add(uint _x, uint _y) public view returns(uint) {
    return _x + _y;
  }
}

pragma solidity ^0.8.0;
contract CallerExample3 {
  struct State {
    bool x;
    bool y;
  }
  State storage storage = State(true, true);
  receive() public payable {
    storage.x = true;
    storage.y = false;
  }
}
