pragma solidity ^0.8.0;
contract MutateWithArrayAccess {
    uint[3] aData = [0, 22, 9];
    function multiplyAndDivideInto3(uint[] memory bData, uint divisor) public {
        uint256[] storage aData2 = aData;
        uint256[] memory bData2 = bData;
        aData2[0] *= 2;
        bData2[0] /= divisor;
    }
    function store() public {
        aData[0] = 10;
        aData[1] = aData[1] + 1;
        aData[2] = aData[2] + 2;
    }
    function update() public {
        uint[3][4] storage mData = [[1, 2, 3, 4], [2, 3, 5, 6]];
        uint divisor = 1;
        mData[0][0] = mData[0][0];
        aData[1] *= divisor;
        mData[1][0] = mData[1][0];
        bData[2] = mData[0][1];
        mData[0][1] = mData[1][0];
        mData[0][2] = mData[2][0];
        mData[1][2] = mData[2][1];
    }
}
