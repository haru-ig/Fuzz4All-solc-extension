pragma solidity ^0.8.0;
contract MultipleArguments5 {
    uint x = 0;
    uint y = 1;
    uint z = 2;
    function multipleArguments5() public view returns (uint, uint, uint) {
        return (x, y, z);
    }
    function multipleArguments5Set(uint _c1, uint _c2, uint _c3) public {
        if (_c1 == _c2 && _c1!= _c3) {
            y = 0x0;
        } else {
            y = y;
            z = _c1 + _c2 + _c3;
            if (_c1 == 0 && _c2 == 0 && _c3!= _c2) {
                y = 1;
            }
        }
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MultipleArguments6 {
    uint x = 0;
    uint y = 1;
    uint z = 2;
    function multipleArguments6() public view returns (uint[4]) {
        uint[4] memory _returnData = [ x, y, z, 0 ];
        return _returnData;
    }
    function multipleArguments6Set(
        uint _a0,
        uint _a1,
        uint[10] calldata _a2
    ) public {
        uint _x = _a0 / _a1;
        uint[10] memory _returnData = [ _x, _a0 + _a1, _a2];
        x = _x;
        uint[5] memory _returnDataSet = [ _returnDataSet[0], 0 ];
        y = _returnDataSet[1];
        z = _returnData[0];

        x = z;
        y = x;
    }
}

pragma solidity ^0.
