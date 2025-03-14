pragma solidity ^0.8.0;
contract Check_0027 {
    function bad() public pure returns (string memory m, uint8 v) {
        v = 3;
        m = "a";
        return (m, v);
    }
}
