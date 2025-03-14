pragma solidity ^0.8.0;
contract Injection_05
{
    function get(uint x1, uint x2, uint x3, uint y1, uint y2, uint w) public pure
    {
        (uint x11, uint x22, uint x33) = (x1, x2, x3);
        (uint y11, uint y22, uint y33, uint w1, uint w2) = (y1, y2, y3);
        require(w == 123, "! w");
        (uint x111, uint x222, uint x333) = (x11, x22, x33);
        (uint y111, uint y222, uint y333) = (y11, y22, y33);
    }
}
contract Injection_06
{
    function get(address x1, address x2, address x3, bytes3 y1, bytes3 y2, bytes3 w) public pure
    {
        (address x11, address x22, address x33, bytes3 y11, bytes3 y22, bytes3 w1, bytes3 w2) = (x1, x2, x3, y1, y2, w, w);
        (address x111, address x222, address x333) = (x11, x22, x33);
        (address y111, address y222, address y333) = (y11, y22, y33);
    }
}
