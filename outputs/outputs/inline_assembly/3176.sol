pragma solidity ^0.8.0;
contract C
{

    struct BData
    {
        uint id;
        string name;
        uint number;
        bool boolVal;
        mapping (uint => bytes[5]) users;
    }



    C.BData private MyData;


    constructor ()
    {

        C();

        MyData.id = idCounter;
        MyData.number = count++;
        MyData.name = "My Data Name";
        MyData.users[128] = "Alice";
        MyData.users[129] = "Bob";
        MyData.users[130] = "Charlie";
        MyData.users[131] = "Eve";


        MyData.boolVal = true;
    }


    function addInteger(uint a, uint b) public pure returns (uint)
    {
        return a + b;
    }


    function logInteger(uint x) public view
    {
        if (x > 0)
            console.log("{0}");
        else
            console.log("{1}");
    }



	bytemap:
	asm
	{

        if(1)
            console.log(1);
        else
            console.log(0);


        mstore(0xF4, 1);







        mstore(0xF4, 130);
