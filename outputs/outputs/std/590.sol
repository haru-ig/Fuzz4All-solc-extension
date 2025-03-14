pragma solidity ^0.8.0;
struct Student {
  uint8[] array;
}
pragma solidity ^0.8.0;
contract HelloWorld {
  uint8[] constant X = [2,1,4,1];
  uint8 mX;
  address public address1;
  Student public myStudent;
  mapping (uint8 => uint8) private map;
  constructor() {
  }
  function setX(uint8[] memory newX) public {
    myStudent = Student({ array: newX });
    map[newX.length] += 1;
    address1 = msg.sender;
  }
}

pragma solidity ^0.8.0;
contract HelloWorld {
  uint8[] constant X = [2,1,4,1];
  uint8 mX;
  address public address1;
  Student public myStudent;
  mapping (uint8 => uint8) private map;
  constructor() {
  }
  function setX(uint8[] memory newX) public {
    map[newX.length] += 1;
    address1 = msg.sender;
    uint8 junk = myStudent.array[1];
  }
}

pragma solidity ^0.8.0;
contract HelloWorld {
  uint8[] constant X = [2,1,4,1];
  uint8 mX;
  address public address1;
  Student public myStudent;
  mapping (uint8 => uint8) private map;
  constructor() {
  }
  function setX(uint8[] memory newX) public {
    map[newX.length] += 1;
    address1 = msg.sender;
    mX = X[1];
    mX += 1;
  }
}
