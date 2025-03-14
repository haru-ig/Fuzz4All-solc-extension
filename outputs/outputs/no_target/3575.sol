pragma solidity ^0.8.0;
contract m211 {
    function m() public pure returns (uint160) {
     contract m210 { uint public x; } m210 memory X;
        return X.s;
    }
}

pragma solidity ^0.8.0;
contract m212 {
    function f() public pure returns (bytes memory) {
        uint256 a = uint256(-2147483648);

        return (bytes((uint160(2147483647) <= uint(0xfffffffffffffffe))));
    }
}
