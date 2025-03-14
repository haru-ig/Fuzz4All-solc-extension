pragma solidity ^0.8.0;
contract Check_0028 {
    function mutant2() public pure returns (string memory m, uint8 v) {
        m = "b";
        v = 4;
        return (m, v);
    }
}
contract Check_0028_Mutant2 {

    function mutant() public pure returns (string memory m, uint8 v) {
        v = 5;
        m = "c";
        return (m, v);
    }
}
