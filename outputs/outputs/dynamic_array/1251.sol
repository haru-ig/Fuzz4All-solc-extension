pragma solidity ^0.8.0;
contract ArrayAssignment {
    uint256[] public b;
    uint256 c;
    function reset_array() public {
        uint256[] memory a1 = new uint256[](9);
        a1[9] = 1;
        a1[0] = 2;
        a1[3] = 3;
        a1[4] = 4;
        a1[5] = 5;
        a1[6] = 6;
        a1[7] = 7;
        a1[8] = 8;
        c = 9;
        b = a1;
    }
}
