pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract Mutant11
{
  struct Point
  {
    uint private y;
    uint private x;
  }
  struct Vector
  {
    uint private x;
    uint private y;
  }
  struct Rectangle
  {
    Point private lowerCorner;
    Point private upperCorner;
  }
  function mutantStruct1() public
  {
    Rectangle rectangle1 = Rectangle({
      y: 100,
      x: 100,
    });
    Rectangle rectangle2 = Rectangle({
      y: 200,
      x: 200,
    });
  }
  function rectReturn() public
  {
    Rectangle rectangle3 = rectangle1.rectangle3;
  }
}
contract Gen11
{
  struct Point
  {
    uint256 a;
    uint256 b;
    uint256 c;
  }
  struct Vector
  {
    uint256 a;
    uint256 b;
    uint256 c;
  }
  struct Rectangle
  {
    Point private lowerCorner;
    Point private upperCorner;
  }
  function returnStruct1() public
  {
    Rectangle rectangle1 = Rectangle({
      y: 200,
      x: 200,
    });
    Rectangle rectangle2 = Rectangle({
      y: 100,
      x: 100,
    });
  }
  function returnStruct2() public
  {
    Rectangle rectangle3 = rectangle1.rectangle3;
    Rectangle rectangle4 = rectangle1;
  }
  function mutantStruct2() public
  {
    Rectangle rectangle1 = Rectangle({
      y: 200,
      x: 100,
    });
    Rectangle rectangle2 = Rectangle({
      y: 100,
      x: 200,
    });
  }
  function mutantStruct3() public
  {
    Rectangle rectangle3 = rectangle1 + rectangle1;
    Rectangle rectangle4 = rectangle1 + rectangle2;
  }
  function rectReturn(Point memory _point1, Vector memory _vector1) public
  {
    Vector memory _vector
