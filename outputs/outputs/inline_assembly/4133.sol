pragma solidity ^0.8.0;
contract MutatedExample {
    uint constant x = 1;
    bytes memory immutable secret = "Hello, World!";
    event X(string a);
    function func() public {
        bytes memory buffer;
        assembly {
            a := mload(0x50)

            switch a
            case x+0x41 {
                mstore(0x50, 0x42)
                return
            }

            mstore(0x50, 0x61)
        }
        X(secret);
    }
}

pragma solidity ^0.8.0;
contract OptimizedExample {
    function func() public constant {
        function f() private pure returns (uint128) {
            uint128 a = 1;
            assembly {
                a := mload(0x00)
            }
        }
        return f();
    }
}
