pragma solidity ^0.8.0;
contract D3Store {
    struct D3Struct {
        uint32 id;
        uint64 creationTime;
    }
    D3Struct[] public arrays;
    function storeWithSize(uint32[] calldata newIds) public {
        for (uint256 i = 0; i<newIds.length; i++){
            arrays.push(D3Struct({id: newIds[i], creationTime: block.timestamp}));
        }
    }
}






contract NestedArrayAbiEreencoding {
    struct SimpleStore {
        uint32[] id;
    }
    SimpleStore private simpleData;

    bool[] public boolData;

    uint[4] public uint4Data;

    uint[32] public uint32Data;

    struct ComplexData {
        uint32 complex;
    }

    mapping(address => uint8[]) public mapData;

    struct InnerStruct{
        uint[64] simple;
    }
    mapping(address => InnerStruct[]) public innerstructs;


    bytes8 _mapKey;



    bytes4 _mapLength;

    constructor() public {

        simpleData.id.length = 4;


        SimpleStore storage simp = simpleData;
        simp.id.length = 8;


        bytes8 fixedValue = "abc" bytes8(0);
        _mapKey.value();
        _mapLength.value();

        mapData[_msgSender()].push(fixedValue);
        mapData[_msgSender()].push((0..32).value(uint() & 1));

        boolData[(4..64).value(uint() & 0) + 1].push((4..96).value(uint() & 1));
    }

}
