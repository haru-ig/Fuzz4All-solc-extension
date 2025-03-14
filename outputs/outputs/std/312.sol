pragma solidity ^0.8.0;
contract Array {
    uint public length;
    function push(uint x) public {
        uint xLength = length + 1;
        uint xOffset = xLength.toString().length;
        length = xLength;
    }
    function pop() public {
        uint xIndex = length - 1;
        length = length.sub(1);
    }
    function getPosition(uint xIndex) public pure returns (string memory position) {
        uint xLength = length.toString().length;
        uint xStart = xIndex * 2;
        uint xEnd;
        if (xIndex < length - 1) {
            xEnd = xLength.add(xLength.add(uint(4))).div(2);
        } else {
            xLength = xLength - xIndex;
            xEnd = uint(4).sub(uint(4)).sub(xIndex * xLength).div(2);
        }
        uint xSliceStart = xStart.add(xSliceStart);
        uint xSliceEnd = xEnd.add(xSliceStart);
        bytes memory xBytes;
        assembly {
            xBytes := mload(add(x, sub(xIndex, 1)))
        }
        position = bytes(uint160(xBytes)).substring(xSliceStart, xSliceEnd);
    }
    function getValue(uint xIndex) public pure returns (uint value) {
        bytes memory xBytes;
        assembly {
            xBytes := mload(add(x, sub(xIndex, 1)))
        }
        value = uint(uint160(xBytes)).sub(1);
    }
    function getArray(uint[] storage elements) public {
        uint xValue = 0;
        uint xArrayOffset;
        for (uint xIndex = 0; xIndex < elements.length; xIndex = xIndex.add(1)) {
            xArrayOffset = (xIndex * 2);
            uint xArrayValue = getValue(xArrayOffset);
            elements[xIndex] = elements[xIndex].add(value);
            elements[xIndex].add(value);
        }
    }
    function getMinArray(uint[] storage elements) public {
        uint xValue = 0;
        uint xArrayOffset;
        for (uint xIndex = 0; xIndex < elements.length; xIndex = xIndex.add(1)) {
            xArrayOffset = xIndex * 2;
            uint xArrayValue = getValue(xArrayOffset);
            if (xValue == 0 || elements[xIndex] < elements[xValue]) {
                xValue = xIndex;
            }
        }
    }
    function getMaxArray(uint[] storage elements) public {
        uint xValue = 0;
        uint xArrayOffset;
        for (uint xIndex = 0; xIndex < elements.length; xIndex = xIndex.add(1)) {
            xArrayOffset = xIndex * 2;
            uint xArrayValue = getValue(xArrayOffset);
            if (xValue == 0 || elements[xIndex] > elements[xValue]) {
                xValue = xIndex;
            }
        }
    }
