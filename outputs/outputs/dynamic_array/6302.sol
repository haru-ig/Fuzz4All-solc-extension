pragma solidity ^0.8.0;
contract c {
  function get() public view returns (string memory) {
    return c.get();
  }

}
pragma solidity ^0.8.0;
contract c {
  function get() public view returns (string memory) {
    c d;
    return string(abi.encodeWithSelector(c.get, d));
  }
}
pragma solidity ^0.8.0;
contract c {
  function get(c myContract) public view returns (string memory) {
    return "this is the message";
  }
}
pragma solidity ^0.8.0;
contract c {
  function get(c myContract) public view returns (string memory) {
    return string(abi.encodeWithSelector(c.get, myContract));
  }
}
pragma solidity ^0.8.0;
contract c {
  uint[] memory myArray;
  function get(c myContract) public view returns (string memory) {
    return string(abi.encodeWithSelector(c.get, myContract));
  }
}
pragma solidity ^0.8.0;
contract c {

  uint[] storage myArray;
  function get(c myContract) public view returns (string memory) {
    return string(abi.encodeWithSelector(c.get, myContract));
  }
}
