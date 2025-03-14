pragma solidity ^0.8.0;
contract Example {
    address internal constant addrTest = address(0xB454FDD2610D216ED60A8E7504341465B73489b9);

    contract ExampleInterface {
        function example(uint256[] memory _dataA, uint256[] memory _dataB) public {
            for (uint256 i=0; i<dataArray.length; i++) {
                _;
            }
            emit ExampleInterface(_dataA, _dataB);
        }

        uint256[] dataArray;
    }

    contract ExampleInterfaceWithDynamicArrays is ExampleInterface {
        uint256[] internal dataArray;


        constructor(uint8[] memory _data) public{

            dataArray.push(_data);

            dataArray.push(uint8[](1));
        }
    }


    contract ExampleInterfaceWithNestedDynamicArrays is ExampleInterface {
        uint256[] internal dataArray;


        constructor(uint8[][] memory _dataA, uint8[][] memory _dataB) public{
            for (uint256 i=0; i<dataArray.length; i++) {
                _;
            }
            emit ExampleInterfaceWithNestedDynamicArrays(_dataA, _dataB);
        }
    }


    contract ExampleInterfaceWithNestedDynamicArraysInInterface is ExampleInterface {
        mapping (uint8[][] internal) nestedArray;
        uint256[] internal dataArray;


        constructor(uint8[][] memory _dataA, uint8[][] memory _dataB, uint256[] memory _dataC) public{
            dataArray.push(_dataA[0]);
            dataArray.push(_dataB[0]);
            dataArray.push(_dataC[0]);
            nestedArray[0].push(_dataA[1]);
            nestedArray[1].push(_
