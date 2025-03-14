pragma solidity ^0.8.0;
contract SimpleContract {
    StructWithNestedArrays stored;

    ConstructorExample() {
        setNestedArrays();
    }

    mapping(uint256 => uint256) mappingOfArraysToUints;
    uint i;

    function ConstructorExample() {
        mappingOfArraysToUints[i] = 10;
    }

    function setNestedArrays() private {
        stored.array0[0] = 1;
        stored.array0[1] = 2;
        stored.array0[2] = i+1;

        stored.nestedArrays[0][0] = 100;
        stored.nestedArrays[0][1] = 200;

        stored.nestedArrays[1][0] = 300;
        stored.nestedArrays[1][1] = 400;

        i++;
    }

    modifier onlyIfArrayNotEmpty(uint8 _nestedIndex) {
        if (bytes(mappingOfArraysToUints[i-_nestedIndex]).length > 0) {
            _;
        }
    }

    function modifyArrayWithNestedArrays() public onlyIfArrayNotEmpty(0)
    {
        bytes memory dataToRecord;

        dataToRecord = abi.encode(bytes32(i-1));

        stored.array0[1] += 1;

        stored.nestedArrays[0][1] += 1;
    }
}
