pragma solidity ^0.8.0;
contract Semantic0002 {
    function equal() public pure {
        uint755 x = 0;
        x > 0;
        (uint255(x) < 1);
    }
    function equal2() public pure {
        uint255 x = 0;
        x > 0;
        (uint255(x) < 1);
    }
}
