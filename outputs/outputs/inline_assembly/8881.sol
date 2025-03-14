pragma solidity ^0.8.0;
interface Interface
{

    uint get_value();
    mapping(uint => uint) public valueToId;
}
contract Test
{
    struct Point3X3
    {
        uint y;
        uint x;
    }
    uint z = 1;
    Point3X3 public point;
    uint x;
    uint getValue() public view returns (uint) {
        return z/2;
    }
    function test() public {
        point.y /= z;
        point.y *= z;
        point.x += z;
        point.y <<= z;
        z = 2;
        point.y <<= z;
        z = 3;
        point.x |= z;
        point.x &= z;
        point.y %= z;
        z = 4;
        point.y |= x;
    }

    function createNewValue() public returns (uint newValue) {
        return z;
    }

    function setValue(uint newValue) public {
        Point3X3 memory newPoint = point;
        newPoint.x += newValue;
        newPoint.y <<= newValue;
    }

}
