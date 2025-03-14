pragma solidity ^0.8.0;
contract Test30023 {
    function g(uint128 i, uint128 j) public pure {
        1/0;
    }
    function h(uint128 i) public pure {
        1/0;
    }
    function a() public pure {
        h(g(1,[2]));
    }
}
