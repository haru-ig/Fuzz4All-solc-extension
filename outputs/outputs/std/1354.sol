pragma solidity ^0.8.0;
contract ArraysMutated2 {
    uint public value1;
    uint public value2;
    uint public value3;
    uint public value4;
    uint public value5;
    uint public value6;
    uint public value7;
    uint public value8;
    uint public value9;
    uint public value10;
    uint public value11;
    uint public value12;
    uint public value13;
    uint public value14;
    uint public value15;
    uint public value16;
    uint public value17;
    uint public value18;
    uint public value19;
    uint public value20;
    uint public value21;
    uint public value22;
    uint public value23;
    uint public value24;
    uint public value25;
    uint public value26;
    uint public value27;
    uint public value28;
    uint public value29;
    uint public value30;
    address public owner;

    bytes32 private symbol_;
    bytes32 private name_;
    bytes32 private decimals_;

    uint private testArray;
    uint public constant N = 22;
    uint public constant M = 33;
    uint public constant GOL = 13;

    function _initialize(address _owner) {
        owner = _owner;
        symbol_ = "ARRAY_MUT";
        name_ = "NAME4";
        decimals_ = "ARRAY_DECIMALS4";
        _write_to_mem(99);
        _write_to_mem(123);
        _write_to_mem(9);
        _write_to_mem(214);
    }

    function _write_to_mem(uint x) internal {
        byte[] memory dataArray = new byte[](20);
        dataArray[0] = 0xcc;
        dataArray[1] = 0x00;
        dataArray[2] = 0x00;
        dataArray.writeByte(3, (x));
        bytes memory dataMem = hex"0x".concat(abi.encodePacked(dataArray));
        assembly{
            mstore(0x40, add(dataMem, 0x20))
            if iszero(mload(0x40)) {
                mstore(0x40, add(dataMem, 0x20))

            }
        }
    }

    function mutatedArrays(uint a) public {
        testArray = a;
        value1 = 1;
        value2 = 2;
        value3 = 3;
        value4 = 4;
        value5 = 5;
        value6 = 6;
        value7 = 7;
        value8 = 8;
        value9 = 9;
        value10 = 10;
