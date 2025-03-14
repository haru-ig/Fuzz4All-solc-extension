pragma solidity ^0.8.0;
contract Semantic {
    int256 public x;
    function f() internal pure returns (int256) {
        x;
        x += 1;
        return;
    }
}

pragma solidity ^0.8.0;
contract Semantic {
int256 public x;
    function f0() public pure returns (int256 ret1) {
        x;
        x += 1;
        f0;
        ret1 = x;
        return;
    }
}
