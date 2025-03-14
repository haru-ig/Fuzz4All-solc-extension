pragma solidity ^0.8.0;
contract Test {
    function modifyTestOne() public {
        dynArr[0] += 3;
        dynArr[1] += 9;
        dynArr[2] += 27;
    }
    uint[] private dynArr;

    uint[] public dynArr2;
    uint256[] public dynArr3;
}
