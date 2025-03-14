pragma solidity ^0.8.0;
contract Complex
{
    mapping (uint => uint) internal points;
    mapping (uint => bool) internal modified;
    function setModified(uint id) public {
      modified[id] = true;
    }
    function addPoint(uint id, uint x, uint y) public {
      if(modified[id] && points[id] >= 10) {
        points[id]+= x;
        points[id]+= y;
      } else {
        points[id]+= x;
        points[id]+= y;
        setModified(id);
      }
    }
    function multiplyPoints(uint id, uint x, uint y) public {
      points[id]*= x;
      points[id]*= x;
      points[id]*= y;
      points[id]*= y;
      setModified(id);
    }
}
