pragma solidity ^0.8.0;
contract Equivalents
{
    struct Point {
      uint x;
      uint y;
    }
    mapping (uint => Point) public points;
    function modify(uint id) public
    {
    	points[id] = Point(0, 0);
    }
    function modifyX(uint id, uint x) public
    {
    	points[id].x = x;
    }
    function modifyY(uint id, uint y) public
    {
    	points[id].y = y;
    }
    function modifyMulti(uint id, uint x, uint y) public
    {
    	points[id].x += x;
    	points[id].y += y;
    }
}

pragma solidity ^0.8.0;
contract Equivalents
{
    struct Point {
      uint x;
      uint y;
    }
    mapping (uint => Point) public points;
    function modify(uint id) public
    {
    	points[id] = Point(0, 0);
    }
    function modifyX(uint id, uint x) public
    {
    	points[id].x = x;
    }
    function modifyY(uint id, uint y) public
    {
    	points[id].y = y;
    }
    function multiply(uint id, uint x, uint y) public
    {
    	points[id].x *= x;
        points[id].y *= x;
        points[id].x *= y;
        points[id].y *= y;
    }
}
