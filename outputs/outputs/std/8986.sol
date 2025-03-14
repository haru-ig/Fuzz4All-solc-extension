pragma solidity ^0.8.0;
contract ExampleStruct10 {
    struct Data {
        uint[] array;
        uint8 _num;
    }
    constructor(uint _num) {
        Data storage storage1 = data();
        storage1.array = new uint[](1);
        Data storage storage2 = data();
        storage2.array[0] = _num;
        storage1.array[0] = 0;
        memory.array[_num] = 0;
    }
    function add() public {
        uint8 s = random.getMaxInt64() << 24;
        uint8 i = 0;
        while (i < data().array.length) {
            data().array[i] = s + i;
            i += 1;
        }
    }
    function access() public view {
        uint8 x = data().array[0];
        data().array[0] = data().array[0] ^ 1;
        data().array[0] = x;
    }
    function mod() external view returns (data memory) {
        return data();
    }
    function data() internal view returns (Data memory) {
        return Data({array: memory.array, _num: 0});
    }
    function getData() public view returns (uint256[2] memory) {
        Data memory d = data();
        return (d.array[0], d.array[1]);
    }
}
