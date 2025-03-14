pragma solidity ^0.8.0;
contract MyClass{
        function greeting() public pure returns(string memory) {
                return "Hello, World!";
        }
        function greet(string memory world) public pure returns(string memory) {
                return "Hello, " + world;
        }
}
function f() public {
       (string memory res1, string memory res2) = (MyClass.greeting(), MyClass.greet(address(this)));
       require(res1 == "Hello, World!", "hello1");
       require(res2 == "Hello, MyClass", "hello2");
