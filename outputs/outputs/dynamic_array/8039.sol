pragma solidity ^0.8.0;
contract Test49EmptyStruct {
    function test () public pure returns (uint x) {}
    function test2 (uint256 x) pure public returns (uint y) {}
}

pragma solidity ^0.8.0;
contract Test50Nested {
    uint[3,3] public nested;
    function test () public {
        nested[1][1] = 4;
    }
}
