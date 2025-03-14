pragma solidity ^0.8.0;
contract UpgradableCounter {


    uint public constant X = 1;
    uint constant Y = X + 1;


    class C {
        uint constant X2 = 2;
        uint constant X1 = X2 - 1;
    }




    event G ( uint x );




    modifier MyStaticMod
    {



        uint X = 6;


        if (X < 2)
        {


            X = 6;
            if (X > 3 && X < 5)
