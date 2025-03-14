pragma solidity ^0.8.0;


contract Example {

    uint x = 1;
    uint y = 2;
    uint z;


    function simple(uint _x) public {
        x = 5;
        z = _x ** 5;
        y = _x + x;
    }

}
