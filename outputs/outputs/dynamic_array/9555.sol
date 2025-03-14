pragma solidity ^0.8.0;
contract Main4 {
    mapping(address => bool[]) public blackboxArray;
    constructor () {
        uint[] memory a = new uint[](8);
        uint[] memory b = new uint[](5);
        uint[] memory c = new uint[](9);
        update(a, b, c);
    }
    function update (uint[] memory a, uint[] memory b, uint[] memory c, ) public {
        modify (a, 0, 3);
        modify(b, 3, 2);
        modify(c, 3, 4);
    }
    function modify (uint[] memory a, uint offset, uint num) public {
        for (uint i = 0; i < num; i++) {
            a[a.length - i - offset] =!a[a.length - i - offset];
        }
    }
}
