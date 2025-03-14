pragma solidity ^0.8.0;


contract InlineAssemblyExercise
{

    bool a;
    function set() public {
        a = true;
    }










    function setTrue() public
    {
        a = true;
    }

    function setFalse() public
    {
        a = false;
    }


    function isOn() public view
    {
        return a;
    }







    function fixBadChange() public
    {
        a =!a;
    }
}
