pragma solidity ^0.8.0;
contract Test {
    address _isolateAddress;
    IsolateData public data;
    function updateData(bytes32[] memory newData1, bytes32[] memory newData2) public
        {
            bytes32 dataKey1;
            bytes32 dataKey2;
            require(data.data[0]!= newData1[0], "0");
            for(uint i = 0; i < newData1.length; i++){
                dataKey1 = newData1[i];
                IsolateData storage _myData = data;
                require( (_myData.data[0]!= dataKey1) && (_myData.data[0]!= newData1[i]), "1");
            }
            require(data.data.length == newData1.length + newData2.length, "2");
            for(uint i = 0; i < newData2.length; i++){
                dataKey2 = newData2[i];
                IsolateData storage _myData = data;
                require( (_myData.data[dataKey1]!= dataKey2) && (_myData.data[dataKey1]!= newData2[i]), "3");
            }
        }
    constructor(address isolateAddress) private {
        _isolateAddress = isolateAddress;
        data = IsolateData({data:new bytes32[](2)});
        data.data[0] = 1;
    }
}
interface IsolateDataAddress {
    function get(address addr) external view returns(bytes32);
}
