pragma solidity ^0.8.0;
contract DynamicalArrays {
    uint public x;
    uint public y;
    uint public z;
    bool public modified;
    bool public hasX;
    bool public hasY;
    bool public hasZ;
    string[2] public strArray;
    modifier withModifyX() {
        x = 1;
        y = 2*x + 3*z + 2*y;
        z = 2*x + 4*y + 7*y*z;
        _;
    }
    function modifyX() public withModifyX { }
    function test() public {
        strArray = new string[](2);
        strArray[0] = "test1";
        strArray[1] = "test2";
    }
}



pragma solidity ^0.8.0;
contract SemanticsTests {
    uint[2] public testArray;
    string[] public testArrayWithLength;
    uint256 public x;
    uint256 public y;
    uint32 public z;
    uint xVal;
    uint yVal;
    uint(16) zVal;
    uint public constant maxX = uint(2**255)-1;
    uint public constant maxY = uint(2**255)-1;
    uint public constant maxZ = uint(2**32)-1;
    uint xMaxVal;
    uint yMaxVal;
    uint zMaxVal;
    uint[] xArr;
    uint[8] xArr2;
    uint32 public x32;
    uint x32Val;
    uint256[4] public x256;
    uint256[2] public x2562;
    uint8 public constant yVal8 = 0xFC;
    uint8 public constant zVal8 = 0xFC;
    uint[20][21] storage x2021;
    uint[21][20] public constant x2120 = [uint(3**256),uint
