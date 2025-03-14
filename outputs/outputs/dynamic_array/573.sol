pragma solidity ^0.8.0;
contract test32 {
    function test() public pure
    {
        (uint a) = (1);
        (uint b0, uint b1, uint b2, uint b3, uint b4) = (1,2,3,4,5);
        (a, a) = (a, a);
        (a, a) = (a, a);
    }
}

pragma solidity ^0.8.0;
contract test33 {
    bytes memory b;
    function test() public pure {
        b.length;
    }
    receive() payable {}
}
/* This program generates the following errors:
11:5: The type of (b.length) (uint) is not compatible with the type of bytes memory "bytes memory b". (not-compatible-types)
11:23: The type of (b.length) (uint) is not compatible with the type of bytes memory "bytes memory b". (not-compatible-types)
13:23: The type of (a, a) (uint, uint) is not compatible with the type of (uint, uint) (not-compatible-types)
10:23: The type of (a, a) (uint, uint) is not compatible with the type of (uint, uint) (not-compatible-types)
9:23: The type of (a, a) (uint, uint) is not compatible with the type of (uint, uint) (not-compatible-types)
11:9: Expected an identifier to finish with a semicolon (`;`). (not-finished)
16:5: The type of (a, a) (uint, uint) is not compatible with the type of (uint, uint) (not-compatible-types)
17:11: Unexpected number of arguments passed at call to function 'test'. Expected number of 3 argument(s). (too-few-calldata-arguments)
19:23: The type of (a, a) (uint, uint) is not compatible with the type of (uint, uint) (not-compatible-types)
20:23: The type of (a, a) (uint, uint) is not compatible with the type of (uint, uint) (not-compatible-types)
22:5: The type of (a, a) (uint, uint) is not compatible with the type of (uint, uint) (not-compatible-types)
25:23: The type
