pragma solidity ^0.8.0;
contract test8
{
    address x;
    uint[] public myArray;
}


pragma solidity ^0.8.0;
contract test8
{
    address x;
    uint256[] public myArray;
}



pragma solidity ^0.8.0;
contract test8
{
    address x;
    uint[] public myArray;
    function test() public {

        console.log(myArray[0]);
        myArray[0] = 666;

        console.log(myArray[1]);
    }
}



pragma solidity ^0.8.0;
contract test8
{
    address x;
    uint[] public myArray;
    function test() public {
        if (myArray[0]>0)
        {
            myArray[0] = 66;
            return;
        }
        else
        {
            myArray[1] = 777;
            return;
        }
    }
}
