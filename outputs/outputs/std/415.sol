pragma solidity ^0.8.0;
contract Test {

    function test() public pure returns (uint8) {
        uint8[10] memory testArray;
        testArray[0] = 8;
        testArray.length = 7;
        testArray.length = 12;
        testArray[4] = 34;
        testArray.push(5);
        testArray.length = 10;
        testArray.push(17);

        uint8 minimum = 8 ;
        uint8 max = 17 ;

        uint8 sum = 0 ;
        for(uint i = 0; i < testArray.length; i++) {
            uint8 tempValue = testArray[i];
            sum = sum + tempValue;
        }

        uint8 max1 = 12 ;
        uint8 min1 = 8 ;

        uint8 max1_1 = testArray[1];
        uint8 min1_1 = testArray[0];

        return ( (sum >= max && sum <= min || sum == 0 )? 1 : 0)
               | (minimum >= max1 && minimum <= min1 || minimum == 0 )
               | ( (sum >= max1_1 ||!sum) && sum!= 0)
               | (sum == 0 &&!sum)? 120 : maximum ;
    }
}
