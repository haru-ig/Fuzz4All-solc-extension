pragma solidity ^0.8.0;
library O{
    contract A{
        uint constant x = 1;
        uint constant y = 2;
        function g(uint a, uint b, uint c) internal pure returns (uint, uint, uint){
            check2(b-42);
            return (a, b, c);
        }
        function check(uint v) internal pure {
        }
        function check2(uint v) internal pure {
        }
    }
    contract B is A{
        uint constant x = 1;
        uint constant y = 2;
        function g(uint a, uint b, uint c) internal pure returns (uint, uint, uint){
            check2(42/--b);
            return (a, b, c);
        }
        function check(uint a) internal pure {
        }
        function check2(uint v) internal pure {
        }
    }
}

contract Z{
    uint private v;
    function f() internal pure returns (uint) {
        unchecked {
            v;
            return getUInt(42);
        }
    }

    function g(uint i) internal pure {
        v = i-42;
    }

    function getUInt(uint j) internal pure returns (uint) {
        return j;
    }
}

contract Z{
    uint private u;
    function f() internal pure returns (uint) {
        unchecked {
            u;
            return 42;
        }
    }

    function g(uint i) internal pure {
        u = i;
    }

    function getUInt(uint j) internal pure returns (uint) {
        return j-42;
    }
}
