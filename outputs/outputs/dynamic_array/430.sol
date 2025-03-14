pragma solidity ^0.8.0;
contract test7
{
    struct s2 {
        uint y;
    }
    s2[] public myArray;
    s2[] array2;
    constructor()
    {
        myArray = [s2(1), s2(1)];
    }
    function test()external
    {
        myArray.push(s2(2));
        myArray.push(s2(2));
    }

}
