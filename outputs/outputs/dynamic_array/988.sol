pragma solidity ^0.8.0;
contract MutatesLoottery {
    function mutateFunction() public pure {
        LotteryWithArrayIndex loottery;
        int[] arrOne;
        Point[][2] memory arrX;
        Point[] memory arr2;
        int internal arrayLength;
        uint internal index;
        for (index = 0; index < 10; index += 1){
            loottery = LotteryWithArrayIndex(arrayAddresses[2][index]);
            arrOne = loottery.getArrayIndex();
            arrX = loottery.testArray;
            arr2 = loottery.nonEqualArray;
            arrOne[index].X += 1;
            arrX[index][index].X += 1;
            arr2 = loottery.nonEqualArray;
        }
        for (index = 0; index < 10; index += 1){
            loottery = LotteryWithArrayIndex(arrayAddresses[2][index]);
            arrOne = loottery.getArrayIndex();
            arrX = loottery.testArray;
            arr2 = loottery.nonEqualArray;


            arr1[0].X += 1;
            arrX[index][0].X += 1;
            arr2 = loottery.nonEqualArray;
        }
        for (index = 0; index < 10; index += 1){
            loottery = LotteryWithArrayIndex(arrayAddresses[2][index]);
            arrOne = loottery.getArrayIndex();
            arrX = loottery.testArray;
            arr2 = loottery.nonEqualArray;
            arr2.push(Point(0,0,0));


            arr1[0][0].X += 1;
            arrX[index][index][0].X += 1;
            arr2[index].push(Point(0,0,0));
        }
        for (index = 0; index < 10; index += 1){
            loottery = LotteryWithArrayIndex(arrayAddresses[2][index]);
            arrOne = loottery.getArrayIndex();
            arrX = loottery.testArray;
            arr2 = loottery.nonEqualArray;
            arr1[0][0] = Point(0,0,0);
            arrX[index][index][0] =
