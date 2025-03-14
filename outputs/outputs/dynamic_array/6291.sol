pragma solidity ^0.8.0;
library l {
  struct s {
    uint a;
    uint b;
  }
  function get() public pure returns (s memory) {
    return s(1, 2);
  }
}


pragma solidity ^0.8.0;
contract c {
  struct s {
    uint a;
    uint b;
  }
  s[] public dynamicArray;
}

pragma solidity ^0.8.0;
contract c {
  function get() public view returns (string memory) {
    return string(uint8(dynamicArray.length));
  }
}
