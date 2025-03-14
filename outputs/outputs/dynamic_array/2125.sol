pragma solidity ^0.8.0;
constructor() internal {
    parentArray.push(1);
    parentArray.push(2);
    parentArray.push(3);
    nestedArray[0][0] = 1;
    nestedArray[0][1] = 0;
    nestedArray[1][0] = 2;
    nestedArray[1][1] = 3;
}
function parentFunc() public pure returns(uint256) {
    return (parentArray[0] == 1);
}
function childFunc(uint256[] memory a1, uint256[] memory a2) public pure returns(uint256) {
    uint256 i;

    if (a1.length < 4) {
        return 0;
    }
    for (i = 2; i < 4; i++) {
        nestedArray[i][1] = a2[i];
        nestedArray[i][0] = 0;
    }
    return a1.length;
}
function parentFunc_1() public pure returns(uint256) {
    return parentArray.length;
}
function childFunc_1(uint256[] memory a1, uint256[] memory a2) public pure returns(uint256) {
    uint256 i;
    if (a1.length < 4) {
        return 0;
    }
    nestedArray[0][0] = 1;
    nestedArray[0][1] = 0;
    nestedArray[1][0] = 2;
    nestedArray[1][1] = 3;
    for (i = 2; i < a1.length; i++) {
        nestedArray[a1.length
