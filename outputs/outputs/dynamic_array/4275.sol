pragma solidity ^0.8.0;
contract G5 {
    struct Data {
        uint[] data;
    }
    Data[] data;
    uint32 index;

    constructor() public {
        data.push(Data({ data: new uint[](3) }));
        data[1].data[0] = 3;
        data[1].data[1] = 2;
        data[1].data[2] = 1;
    }

    function add() public {
        data[index].data[data[index].data.length] = 5;
        data[index].data[data[index].data.length + 1] = 4;
        data[index].data[data[index].data.length + 2] = 3;
    }
}
