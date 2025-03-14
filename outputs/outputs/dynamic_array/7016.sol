pragma solidity ^0.8.0;
contract Test74 {
        uint[5] memory a = [34, 2, 1, 42, 54];
        bool b;

        function test() public pure returns (uint, uint, uint, uint, uint) {
                return (0x00, 0x13, 0x32, 0x55, 0x66);
        }
}
contract Test75 {
        uint public x;
        constructor(uint _x) public {
                x = _x;
        }
}
contract Test76 {
        mapping(uint => uint) m;
        uint public xx;

        constructor(uint _x) public {
                m[_x] = 456;
        }
        function foo() public {
                x = 678;
                foo();
                xx = 567890;
        }
}
contract Test77 {
        struct SomeStruct {
                uint x;
            });

        struct StructWithMap {
                uint x;
                mapping(uint => bytes32) map;
            }

        StructWithMap structWithMapStruct;
        Constructor() public {
                structWithMapStruct.map[100] = foobar;
        }

        function() public { }

        function foo() public { }
}
contract Test78 {
        bytes32 public constant foobar = keccak256("Foo");
        bytes1 constant bar = 'Bar';

        modifier onlyFoobar() {
                require(msg.sender == bar);
                _;
        }
        modifier onlyBar() {
                require(x == 777);
                _;
        }
        modifier onlyOwner() {
                require(msg.sender == owner);
                _;
        }

        modifier onlyX() {
                require(x == 4);
                _;
        }

        function() public { }
}
contract Test79 {
        string constant x = "Hello World!";
        uint public constant y =
