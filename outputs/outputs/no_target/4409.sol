pragma solidity ^0.8.0;
contract L {
    uint[3] b = [10, 20, 30];
    uint c = 40;
    uint256 public a;
    function m() public pure {
        assembly {
       let 100_000 := b[1]
       }
    }
}
