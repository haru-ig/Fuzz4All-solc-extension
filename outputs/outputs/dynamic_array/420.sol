pragma solidity ^0.8.0;
contract test5
{
    struct s2 {
        uint x;
    }
    s2[] public myArray;
    function test() public
    {
        require(myArray.length < 11,"Array of 32 longs and 2 uints");
        for(uint i=0; i<myArray.length; i++){
            myArray[i].x = i;
            uint temp = myArray[i].x;
        }
    }
}
