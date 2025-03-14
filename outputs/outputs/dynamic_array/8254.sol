pragma solidity ^0.8.0;
contract NonEmptyArrays {
    bytes32[] public nonEmpty;
    bytes32[] public empty;
    mapping (bytes32 => uint) public x;
    mapping (bytes32 => uint) public y;
    mapping (bytes32 => uint) public z;
    bytes32 public emptyIndex;

    constructor (bytes32[] memory _nonEmpty, bytes32 _empty, uint _emptyIndex) public {
        nonEmpty = _nonEmpty;
        empty = _empty;
        emptyIndex = _emptyIndex;

        x[emptyIndex] = 0;
        y[emptyIndex] = 0;
        z[emptyIndex] = 0;
    }

    function add(uint _x) public {
        nonEmpty.push(1);
        empty.push(1);
        emptyIndex.push(1);
        x[1] = _x;
        y[1] = _x + 1;
        z[1] = uint(uint8[](_x + 1) + 1);
    }

    function test() public {
        nonEmpty.length;
        empty.length;
        emptyIndex.length;
        x[1];
        y[1];
        z[1];
    }

    function emptyAt(uint i) public view returns (bytes32) {
        bytes32 empty;
        if (i < nonEmpty.length) {
            empty = nonEmpty[i];
        } else {
            empty = emptyIndex;
        }
        return empty;
    }
}
