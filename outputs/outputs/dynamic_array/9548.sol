pragma solidity ^0.8.0;
contract Main2 {
    address public newContract;
    constructor() public {
        newContract = new address(new Main2());
    }

    mapping(address => uint[]) public blackboxArray;
    uint[] public someBytes;
    uint[] public someNumbers;

    constructor () {}

    function writeArray(uint[] memory array) public {
        array.push(6);
        blackboxArray[msg.sender][0] = array;
    }

    function makeArray() public returns (uint[] memory) {
        uint[] memory array = new uint[](5);
        array.length = 3;
        array[0] = 1;
        array[1] = 2;
        array[2] = 3;
        array[3] = 4;

        return array;
    }

    function modifyBlackboxes (uint[] memory array, uint offset, uint num) public {
        for (uint i = 0; i < num; i++) {
            array[array.length - i - offset] += 1;
        }
    }
}
