pragma solidity ^0.8.0;


library TestLib {

    function isTrue(bool x) pure external returns(uint) { if (x) return(0); return(1); }

    event TestEvent(bytes _data);
}

contract ArrayTest {

    event ArrayTestEvent(address _owner, uint _amount);


    struct MyData1 {
        uint data0;
    }


    struct MyData2 {
        uint data0;
    }


    struct MyData3 {
        uint[2] data0;
    }

    struct MyData4 {
        bytes data0;
    }

    function getArrayData(uint[] memory _x) public view returns (uint[], uint) {
        uint[] memory x = _x;
        uint _length = x.length;
        uint[] memory returnArray = new uint[](2);
        returnArray[0] = _length;
        returnArray[1] = _length;
        returnArray;
    }

    function getArrayData2(uint[] storage _x) public view returns (uint[], uint) {
        uint[] memory x = _x;
        uint _length = x.length;
        uint[] memory returnArray = new uint[](2);
        returnArray[0] = _length;
        returnArray[1] = _length;
        returnArray;
    }

    function getCallData(uint
