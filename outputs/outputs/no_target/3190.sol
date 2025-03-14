pragma solidity ^0.8.0;
contract seven {
    function __func__() public {}
    function setFoo(string memory str) public {
        bar(str);
    }
    function bar(address  ) public { }
}

pragma solidity ^0.8.0;
contract seven {
    function __func__() public {}
    function setFoo (address  ) public returns (bool) {
      return bar();
    }
    function bar() public { }
}
