pragma solidity ^0.8.0;
contract A {
    uint256[] public bArray;
    uint256[] public bArray2;

    function m() internal {
        bArray.push(uint());
        bArray2 = bArray;
        bArray2.push(uint());
    }
}
