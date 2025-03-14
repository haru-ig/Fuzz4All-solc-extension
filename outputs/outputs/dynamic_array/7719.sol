pragma solidity ^0.8.0;
contract Test19_semanticsDiffer{
        bool public a;
        uint8[] public b;
        uint8[13] p;
        function f() public returns (uint256) {
            uint x;
            if (a) {
                x = p[7];
                b.push(a);
            }
            return x;
        }
    }
