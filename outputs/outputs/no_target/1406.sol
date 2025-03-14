pragma solidity ^0.8.0;
contract Check_0027 {
    function bad() public pure returns (string memory m, uint8 v) {
        v = 3;
        m = "b";
        return (m, v);
    }
}

pragma solidity ^0.8.0;
contract Check_0027 {
    function bad() public pure returns (string memory m, uint8 v) {
        v = 3;
        m = "c";
        return (m, v);
    }
}
