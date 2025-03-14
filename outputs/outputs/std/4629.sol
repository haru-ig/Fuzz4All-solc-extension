pragma solidity ^0.8.0;
contract Mutated {
    uint256 constant INITIAL_X = 42;
    uint256 private x = INITIAL_X;
    event XSet(uint y);
    constructor() public {
        x = INITIAL_X;
        emit XSet(x);
    }
    modifier when(uint b) {
        if(x == b){
            _;
        }
    }
    function setX(uint y) public when(INITIAL_X + x) {
        x = INITIAL_X + x;
        emit XSet(x);
      }
    function getX() public view returns (uint256) {
        if(x == INITIAL_X + INITIAL_X + x) {
        uint256 z = x;
        return z;
    }
        uint256 z = x + x;
      return z;
    }
    function getX2() public view returns (uint) {
      uint256 y = x * x;
    uint256 z = x / y;
    if(y == 0) {
        return z;
    }
      return z;
    }
    function getX3() public view returns (uint256) {
        uint256 y = x * x;
        uint256 z = x / (x + x);
        if(y == 0) {
            return z;
        }
        return z;
    }
}

pragma solidity ^0.8.0;
contract Mutated {
    uint256 constant INITIAL_X = 42;
    uint256 private x = INITIAL_X;
    event XSet(uint256 y);
    constructor() public {
        x = INITIAL_X;
        emit XSet(x);
    }
    function setX(uint y) public {
        x = INITIAL_X + INITIAL_X + y;
        emit XSet(x);
    }
    function getX() public view returns (uint256) {
          uint256 z = x;
        return z;
    }
    function getX2() public view returns (uint) {
      uint256 y = x * x;
    uint256 z = x / y;
    if(y == 0) {
        return z;
    }
      return z;
    }
}
