pragma solidity ^0.8.0;
contract Semantic0002 {
    function changeEqual() public pure {
        uint256 x = 0;
        x > 0;
        (x < 1);
    }
    function changeEqual2() public pure {
        uint160 x = 160;
        x > 0;
        (x < 1);
    }
    function changeEqual3() public pure {
        uint128 x = 128;
        x > 0;
        (x < 1);
    }
}
