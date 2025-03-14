pragma solidity ^0.8.0;
contract TestContract {
    function simpleCallDataCall() public {
        uint256 data;

        data = 123;


        storageToStorage(memoryToData(data));

        bool ok = dataToMemory(dataToStorage(data), &data);
    }

    function memoryToData(uint256 memory) internal pure returns(IsolateData memory) {
        IsolateData memory isoladata;
        isoladata.data = memory;
        return (isoladata);
    }

    function dataToMemory(IsolateData memory data) internal pure returns(uint256) {
        uint256 memory = data.data;
        return(memory);
    }

    function storageToStorage(IsolateData memory data) internal pure returns(IsolateData memory) {
        IsolateData storage memdata;
        memdata.data = data.data;
        return(memdata);
    }


    function dataToData() public {
        IsolateData memory data;
        data.data = 123;
        dataToData2(data);
    }

    function dataToData2(IsolateData memory data) public pure {
        dataToData3(data);
        dataToData3(data);
    }

    function dataToData3(IsolateData memory data) public pure {
        memoryToData(data.data);
    }

    function memoryToData(uint256 memory) pure {
        IsolateData memory isoladata;
        isoladata.data = memory;
    }

    function dataToData() public {
        IsolateData memory data;
        dataToData(data);
    }

    function dataToData(IsolateData memory data) public {
        uint256 memory = data.data;
        dataToMemory(memory);
        dataToMemory(memory);
    }

    function dataToMemory(uint256 memdata) public pure {
        IsolateData memory data;
        data.data = memdata;
    }
}
