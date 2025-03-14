pragma solidity ^0.8.0;
contract third3 {
    uint16 a;
    function f() public pure returns (uint16) {
        a = 0;
        return a;
    }
}
pragma solidity ^0.8.0;
contract third4 {
    constructor() public { }
    address payable a;
    function f() public pure returns (address payable) {
        a = 0x0;
        return a;
    }
}
pragma solidity ^0.8.0;
contract third5 {
    uint a;
    function g() public pure returns (uint) {
        a = 1;
        return 0;
    }
}
contract third5a {
    uint a;
    function g() public pure returns (uint) {
        a = 0;
        return 0x0;
    }
}
pragma solidity ^0.8.0;
contract third6 {
    uint a;
    function f() public pure returns (uint) {
        a = 1;
        return a;
    }
}
pragma solidity ^0.8.0;
contract test {
    function f() public pure {
        bytes32 x = new bytes32(32);
    }
}
pragma solidity ^0.8.0;
contract test2 {
    address payable a;
    function f() public pure returns (address payable) {
        a = 0x0;
        return a;
    }
}
contract test3 {
    address payable x;
    address payable y;
    function f() public pure returns (bool) {
      z = a & a;
      x = a;
      return ( (z) == (0));
    }
}
pragma solidity ^0.8.0;
contract test4 {
    address payable y;
    function test() public pure returns (uint) {
      y = a;
      return x;
    }
}
pragma solidity ^0.8.0;
contract test5 {
    address payable y;
    function test() public pure returns (uint) {
      y = x.call.value(1)("");
      return x;
    }
}
pragma solidity ^0.8.0;
contract test6 {
    address payable y;
    function test() public pure returns (uint) {
      y = x.call(a, a);
      return x;
    }
    address x;
    address payable a;
}
contract test7 {
    function test() public pure returns (bool) {
      a(0);
      return true;
    }
}
pragma solidity ^0.8.0;
contract test8 {
    event log(uint x);
    address payable r;
    contract {
      event testEvent(uint p);
      event testEvent2(bool p);
      event testEvent3(string p);
      function test() public pure returns (bool) {
        emit log(1);
        emit log(1, 0x3, 0x4);
        emit log(
