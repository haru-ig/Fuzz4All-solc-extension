pragma solidity ^0.8.0;
contract LotteryWithArrayAccess {
    struct Point3 {
    uint X;
    uint Y;
    uint Z;
    uint R;
}
struct Point2 {
    uint X;
    uint Y;
}
Point2[][] internal _arrayAddresses;
Point2[][] internal _testArray;
Point2[][] internal _nonEqualArray;
bool[] internal _booleans;
function getArrayAddresses() public view returns(Point2[][] memory){
    return _arrayAddresses;
}
}
