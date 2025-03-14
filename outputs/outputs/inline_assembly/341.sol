pragma solidity ^0.8.0;
{ address[6][10] arr; }
contract C2 {
    function create() public pure {
        assembly {
       arr.10[1][3] := 10
        }
    }
}
