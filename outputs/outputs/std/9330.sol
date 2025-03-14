pragma solidity ^0.8.0;
contract New
{
    struct Point {
        uint256 x;
        uint256 y;
    }

    struct Rectangle {
        uint256 left;
        uint256 top;
        uint256 right;
        uint256 bottom;
    }

    struct Ratio {
        uint256 numerator;
        uint256 denominator;
    }

    struct Size {
        uint256 width;
        uint256 height;
    }

    uint256 public x;
    bool public x1;
    Point public point;
    Rectangle public rectangle;
    Ratio public ratio;
    Size public size;

    function Square() public
    {
        x = 0x7fffffffffffffff;
        x1 = true;
        point.x = 10;
        point.y = 20;
        rectangle.left = 30;
        rectangle.top = 40;
        rectangle.right = 50;
        rectangle.bottom = 60;
        ratio.numerator = 0x55555555555555555555555555555555555555555555555555555555555555;
        ratio.denominator = 0xffffffffffffffffffff;
        size.width = 10;
        size.height = 20;
    }

    function Sum() public
    {
        x = 0x206860f76fdcd827;
        x1 = false;
    }

    function Multiply() public
    {
        x = ratio.numerator * ratio.denominator;
        x1 = true;
    }

    function SquareRoot() public
    {
        x = 0xfffffffffffffffe;
        x1 = true;


    }

    function Pow() public
    {

        uint256 _exp = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffe7ffffffedfffffff7;
        uint256[] memory arr = new uint256[](100);
        for (uint256 i = 0; i < 100; i++) {
            arr[i] = uint256(uint256(uint256(1) << uint256(31) * (i + 1))) / _exp);
        }
        x = arr[0];
        x1 = (!x1);
        x = arr[50];
        x1 = true;
        x = arr[150];
        x1 = true;
        x = uint256(uint256(uint256(1) << uint256(127))) / 0x80000000000000000000000
