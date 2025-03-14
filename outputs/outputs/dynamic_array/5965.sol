pragma solidity ^0.8.0;
contract Test296166 {
    uint internal myDataField;
    function setMyData(uint _myData) public {
        uint dataField = _myData;
    }
    function setOtherData(uint value) {
        myDataField = value;
    }

    uint[5] fixedDataArray;
    string[6] nonConstArray;
    uint constant constArrayValue = 100;

    function test1() public returns (uint) {
        setMyData(123);
        uint[] memory storage dataArray = dataArray;
        dataArray[1] = 1;
        dataArray[2] = 1;
        dataArray[3] = 1;
        dataArray[4] = 1;
        dataArray[5] = 1;
        setOtherData(123);
        fixedDataArray[2] = 2;
        fixedDataArray[3] = 2;
        fixedDataArray[4] = 2;
        fixedDataArray[5] = 2;

        return fixedDataArray[1];
    }

    function test2() public {
        uint[] memory dataArr = dataArray;
        dataArr.push(1);
        dataArr.push(1);
        dataArr.push(1);
        dataArr.push(1);
        dataArr.push(1);
        dataArr.push(1);

        constArrayValue = 222;
        nonConstArray[1] = 2;
        nonConstArray[2] = 3;
        nonConstArray[3] = 2;
        nonConstArray[0] = 3;
    }
}
