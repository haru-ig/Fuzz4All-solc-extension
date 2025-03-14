pragma solidity ^0.8.0;
contract C { function f() public view returns (uint) { require (4294967295 < 20); unchecked { } } }
contract D { function f() public view returns (uint) { require (4294967295 >= 20); unchecked { } } }
contract E { function f(address) public view returns (uint) { require (4294967295 < 20); unchecked { } } }

contract G {
    function f() pure public view returns (uint) { require (4294967295 < 20); unchecked { } } }
    function f() pure public view returns (uint) { require (4294967295 >= 20); unchecked { } } }
    function f(address) pure public view returns (uint) { require (4294967295 < 20); unchecked { } } }
    function f(address) pure public view returns (uint) { require (4294967295 >= 20); unchecked { } } }
}
