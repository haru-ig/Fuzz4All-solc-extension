pragma solidity ^0.8.0;
contract Test43_DynamicArray1 {
    uint[] public a = [1, 2, 3];
    constructor() {
        a.push(4);
        a.push(5);
        a.push(6);
    }
    function add(uint[] memory _a) public {
        uint[8] memory _a8 = [0, 0, 0, 0, 0, 0, 0, 0];
        uint _startX = 0;
        uint _endX = 0;
        uint _startY = 0;
        uint _endY = 0;
        for (; _endX < 8; _endX++) {
            uint i = (uint(_endX) << 1) + 1;
            _a8[_startX++] = i;
            _a8[_startX++] = i + 1;
        }
        uint _startZ = 0;
        uint _endZ = 0;
        uint _startA = 0;
        uint _endA = 0;
        for (; _endZ < 8; _endZ++) {
            uint i = (uint(_endZ) << 1) + 1;
            _a[_startA++] = i;
            _a[_startA++] = i + 1;
        }
        (uint _startB, uint _endB) = (
         uint(_startX) + uint(_startY) + uint(_startZ),
         uint(_startX) + uint(_startY) + uint(_endZ),
        );
        for (; _endB < 8; _endB++) {
            uint i = (uint(_endB) << 1) + 1 + 2;
            _a[_startA++] = i;
            _a[_startA++] = i + 1;
        }
        uint _startC = 0;
        uint _endC = 0;
        uint _startD = 0;
        uint _endD = 0;
        for (; _endC < 8; _endC++) {
            uint i = (uint(_endC) << 1) + 2 + 1;
