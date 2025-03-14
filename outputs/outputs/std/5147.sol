pragma solidity ^0.8.0;
contract Mutate {
    function f(uint16 a, uint256 b, uint8 c) public pure {
        uint8 d = 1;
    }
}

pragma solidity ^0.8.0;
contract Multiply {
    function f(uint16 a, uint16 b, uint256 c, uint256 d) public pure {
        int11 e = 1;
        uint8 f = 1;
        uint8 g = 1;
    }
}

contract MutateContracts {
    function f( uint16 a, uint16 b, uint256 c, uint256 d) public pure {
    }
    function f2( bytes32 b, bytes32 c, bytes32 d) public pure {
    }
}

contract NoUnusedMembers {
    function f() public pure {
    }
}
