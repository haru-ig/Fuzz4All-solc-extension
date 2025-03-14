pragma solidity ^0.8.0;



contract MutatedDynamicArraysV3 {
    function test() external{





        uint9[3] arr;








        uint9 x = 1;




        arr[0] = x;






    arr[1] = 2;






    uint9 a = arr[0];

    uint9 b = arr[1];


    uint9 c = arr[1];


    uint9 d;


    d = a;


    c = arr[2] + arr[3];


}
}
