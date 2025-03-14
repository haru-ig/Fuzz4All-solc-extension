pragma solidity ^0.8.0;
contract Foo {
    mapping (address => bool) public foo;
    function setfoo(address _foo) external {
        require(foo[_foo] == false, "The address is already taken in the foo mapping");
        foo[_foo] = true;
    }

    contract A {
        function setfoo(address _foo) external {
              require(1, "The require fails");
              require(foo[_foo] == false, "The address is already taken in the foo mapping");
              require(foo[_foo] == false, "The address is already taken in the bar mapping");
              foo[_foo] = true;
        }
    }
}
