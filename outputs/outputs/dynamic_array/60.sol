pragma solidity ^0.8.0;
contract MutatedA is A {
    function test() public {
        bArray.push(1);
        bArray[0] = 3;
        bArray[0] = 10;
        bArray[0] = 7;
        bArray[15] = 12;
        bArray[10].push(1);
        bArray[0][0].push(1);
        bArray2.push(1);
        bArray[0][0].push(1);
        bArray3.push(1);
        bArray3.push(15);
        bArray4[0] = 15;
        bArray5[0] = 15;
        bArray6[0] = 15;
        bArray[1][0] = 12;
        bArray16.push(1);
    }
}

pragma solidity ^0.8.0;
contract CopyofMutatedA is A {
    function test() public {
        uint256[] memory bTmp;
        bTmp = bArray;
        bArray = new uint256[](16);
        bArray2 = new uint256[](16);
        bArray3 = new uint256[](16);
        bArray4 = new uint256[](8);
        bArray5 = new uint256[](8);
        bArray6 = new uint256[](8);
        bArray7 = new uint256[](8);
        bArray8 = new uint256[](8);
        bArray9 = new uint256[](8);
        bArray10 = new uint256[](8);
        bArray11 = new uint256[](8);
        bArray12 = new uint256[](8);
        bArray13 = new uint256
