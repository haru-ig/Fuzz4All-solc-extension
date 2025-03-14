pragma solidity ^0.8.0;
contract Test {
    struct Data {
        address foo;
    }


    address[10] private constant DATA_ARRAY_0_PLACEHOLDER_MEMORY = [
        address(0),
        address(0),
        address(0),
        address(0),
        address(0),
        address(0),
        address(0),
        address(0),
        address(0),
        address(0),
    ];

    mapping(uint256 => Data) public data;

    constructor(Data memory _param, uint256 _param_new) public {

        data[0] = _param;
    }

    fallback() public payable {
        emit DataChanged(address(data[0].foo));
    }

    receive() external payable {
        emit DataChanged(address(data[0].foo));
    }

    event DataChanged(address foo_);

    function getDataArray() public view returns (address[10]) {
        return DATA_ARRAY_0_PLACEHOLDER_MEMORY;
    }

    function testContractCallData(uint256 a) public {
        emit callData(a);
    }

    function receiveDataChangedEvent(address foo) public {
        emit DataChanged(foo);
    }

    function setNewData(Data memory _newData) public {
        data _copyData2 = data;
        emit NewDataSet(foo_0, _copyData2, _newData);
        data = _newData;
    }

    event NewDataSet(address foo_, address[10] copyData_, Data newData_);
}
