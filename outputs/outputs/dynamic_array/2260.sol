pragma solidity ^0.8.0;




contract UseDynamicNestedArray_fe381B96903d46E879dCae0d823116c3 {
    uint [][] arrayOne;
    uint [][] arrayTwo;
    constructor() public {
        arrayOne = [];
        arrayOne.push(arrayOne);
        arrayOne.push(arrayOne);
    }
}
