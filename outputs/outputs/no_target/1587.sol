pragma solidity ^0.8.0;
contract Semantic0002 {
    function equal3() public pure {
        uint8 x = 1;
        x > 0;
        (x == x);
        (uint8(x) >= x);
    }
    function equal2() public pure {
        uint256 x = 0;
        x > 0;
        (x == x);
        (uint256(x) >= x);
    }
    function equal() public pure {
        int256 x = 0;
        x > 0;
        (x == x);
        (uint256(x) >= x);
    }
}
