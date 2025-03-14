pragma solidity ^0.8.0;
contract Check_0050 {
    function mutant() public pure returns (string memory m, uint8 v) {
        v = 3;
        m = "a";
        v = v + 10;
        return (m, v);
    }
}
