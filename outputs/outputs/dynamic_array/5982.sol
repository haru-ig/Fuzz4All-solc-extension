pragma solidity ^0.8.0;
contract Test30012 {
    function f(uint8 m) public {
        bytes memory someBytes = {0x...7b};
        bytes memory someBytes2 = {0x...01};
        uint8 memory _val = 0x01;

        uint8[1] memory data = [_val, 44];
        data[0] = m;
        uint8[1];
        address[] memory addresses;
        uint8[] memory nums;
        uint8[1][1] memory num2 = [0];

        someBytes = uint8[22][22];
        someBytes[0][0] = m;
        someBytes[1][1] = _val;
        someBytes = uint8[2][2];
        someBytes[0][0] = m;

        uint8[1][2][2] storage data2 = [[[1], 1, 1]];

        bytes32 val = 0x7b;

        val = bytes32(0);
        data2[0][0][0] = val;

        bytes32[20] memory bts;
        _val = 0x01;
        bts[2] = 128 + 256 + _val - 32;
        bts[1] = _val;
        _val = 0x02;
        bts[3] = 32 + _val;

        uint8[1][2][1][4][5][6][7][8][9][10][11][12] memory d;
        for(int i = 0; i < 10; i += 1)
        {
            d[0][0][0][i][0][i] = 0x05;
        }
        uint8[1] memory dat = [10];
    }
}
