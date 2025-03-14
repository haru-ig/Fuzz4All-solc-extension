pragma solidity ^0.8.0;
import "./TestLib.sol";
uint256 const MAXSIZE = TestLib.MAXSIZE;
struct StructWithArray
{
    uint256 data1;
    uint256 data2;
    uint256 data3;
    uint256 data4;
}
struct StructWithArray
{
    uint256 data1;
    uint256 data2;
    uint256 data3;
    uint256 data4;
}
struct StructWithArray
{
    uint256 data1;
    uint256 data2;
    uint256 data3;
    uint256 data4;
}
struct StructWithArray
{
    uint256 data1;
    uint256 data2;
    uint256 data3;
    uint256 data4;
}
struct StructWithArray
{
    uint256 data1;
    uint256 data2;
    uint256 data3;
    uint256 data4;
}
function test() public pure
{
    uint constant arrSize = 10;
    StructWithArray[] memory a = new StructWithArray[](arrSize);
    if (a.length >= 3)
        a[0] = StructWithArray(0,0,0,0);
    TestLib.arraySet(a,1);
    TestLib.arraySet(a,2);
    TestLib.arraySet(a,3);
}
