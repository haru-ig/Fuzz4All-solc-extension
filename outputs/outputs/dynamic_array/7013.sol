pragma solidity ^0.8.0;
contract Test72 {
        bytes32 constant foobar = keccak256("Foo");
        address public other;
        constructor() public {
                assert(bytes32(0) == foobar);
                other = msg.sender;
        }
}

pragma solidity ^0.8.0;
contract Test73 {
        uint public x = 5;
        uint public y;
        uint public z;
        mapping(uint => uint) m;
        constructor() public {
                m[5] = 5;
        }
        function foo(uint[] memory __arr) public {
                __arr[0] = 25;
                m[6] = 6;
                for (uint i; i < 5; i++) {
                        y = 0;
                        z = 10;
                        x = 0;
                        x++;
                        z = 0;
                }
        }
}
