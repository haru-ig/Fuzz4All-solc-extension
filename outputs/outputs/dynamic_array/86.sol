pragma solidity ^0.8.0;
contract AbiDynamicArray {
    event Event(uint256 _index, uint256[] bArray);

    int arrInt[];
    bool[] arrBool;

    struct Struct {
        int32 aInt;
        bool aBool;
    }

    ArrayItem[] arrItems;

    mapping (uint256 => ArrayItem) mappings;
    mapping (uint256 => Struct) mapping1;
    mapping (uint256 => uint256[]) mapping2;
    mapping (uint256 => uint256[]) mapping3;
    mapping (uint256 => uint256[][][]) mapping4;

    function setOne(uint256 i) public {
        bArray.push(i);
    }

    function setOne2(uint256 i) public {
        bArray2.push(i);
    }

    function setTwo(uint256[] memory i) public {
        for (uint iId = 0; iId < i.length; iId = iId + 1){
            bArray1.push(i[iId]);
        }
    }

    function addArrayItem(uint256 _index) public {
        arrItems.push(ArrayItem({
            id: _index,
            count: 1
        }));
    }

    function addArrayItems(uint256 _index) public {
        for (uint iId = 0; iId < _index; iId = iId + 1)
        {
            ArrayItem memory item;
            item.id = iId + 1;
            item.count = 1;
            arrItems.push(item);
        }
    }

    function initMappings(uint256 _index) public {
        mappings[_index] = ArrayItem({
            id: 123,
            count: 456
        });
        mapping1[12] = Struct({aInt: 444, aBool: true});
        mapping2[12] = [12345];
        mapping3[12] = [12345, 45678];
        mapping4[12] = [12345, [6, 45]];
    }

    function changeArrayLength(uint256 _index) public {
        bArray[_index - 1] = arrItems[_index].count;
    }

    function changeArrayItems(uint256 _index) public {
        bArray1[_index - 1] = arrItems[_index].count;
    }

    function changeMappingLength(uint256 _index) public {
        mapping2[_index - 1
