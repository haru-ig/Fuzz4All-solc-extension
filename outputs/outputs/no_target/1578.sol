pragma solidity ^0.8.0;
contract Semantic0002 {
    uint128 x;
    function equal() public pure returns (uint256) {
        x = 11;
        (x > 0);
    }
}

pragma solidity ^0.8.0;
contract Semantic0003 {
    uint128 x;
    uint256 y;
    function equal() public pure returns (uint128) {
        uint8 i = 10;
        if (2*i == 4)
            (x < 1);
    }
    bytes memory a = "Hello World!";
    uint0 i;
}
