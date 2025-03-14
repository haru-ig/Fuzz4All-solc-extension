pragma solidity ^0.8.0;

contract Example{
    uint constant x = 4;
    uint constant y = 5;
    uint constant z = 6;
    uint z1 = 7;





    uint x1 = x;
    uint y1 = y;


    x = x1;
    y = y1;

    function reset() public{
        (uint x0, uint y0) = x1;
        (uint _x := x0, uint _y := y0) = (y0, x0);
        (x0, y0) = (_y, _x);
    }
}
