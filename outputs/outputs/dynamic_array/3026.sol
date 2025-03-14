pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicAraryModulation2 {
    uint[] public x;
    uint[] public y;
    uint xSize;

    constructor () public {
        uint constant size = 2;
        xSize = size;
        uint[size] memory arr = new uint[](2);
        y = new uint[](2);
        x = arr;
        y[1] = x[1];
        y.push(y[1]);
    }
        function m(uint _x) public view returns (uint[] memory) {
            uint[] memory xData = new uint[](xSize + 1);
            xData[0] = _x;
            if (xData.length <= xSize) {

              return xData;
            }

            if (xData[1] == 1) {
              return data;
            }
            x[0] = _x;
            return xData;
    }
}
