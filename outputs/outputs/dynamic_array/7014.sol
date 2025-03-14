pragma solidity ^0.8.0;
contract Test71 {
        bytes32 public foobar;
        address public other;
        bytes32[100] public array;
        constructor() public {
                other = msg.sender;
                array[0] = keccak256("foo");
                array[1] = keccak256("bar");
                array[99] = keccak256("baz");
                array[100] = keccak256("foobar");
        }
        function foo() public { array[1] = keccak256("baz"); }
        function foo(uint z) public { foobar = keccak256("Foo"); }
        function bar() public { array[z] = "bar"; }
        function baz() public { array[z + 4] = "baz"; }
}
