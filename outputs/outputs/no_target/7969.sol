pragma solidity ^0.8.0;
contract TestMutator8 {
    uint[] public x;
    uint[] public z;
    constructor () public {
        x= new uint[](2);
        z= new uint[](2);
        x[0] = 0xdeada;
        x[1] = 0;
        z[0] = 1;
        z[1] = 0;
    }
    function set(uint[2] calldata _values) external {
        uint[] memory _x = x; uint[] memory _z = z;
        uint256 _z_tmp = _z[0];
        uint256 _z_tmp_0 = _z_tmp; uint256 _tmp = 1; _z_tmp = _tmp;
        z[1] = 0;
        _z[1] = 1;
        x.push(0);
        x.push(0);
        _z.push(0);
        _tmp = 0; _z = _z;
        _z = _z; uint256 _tmp_0 = 1; _z= _tmp_0; uint256 _z_tmp_1; _z_tmp = _z_tmp;
        uint256 _z_tmp_2;
        uint256 _z_tmp_3;
         _z_tmp_1 = _z_tmp; _z= _tmp; uint256 _tmp_2 = 1; _z= _tmp_2; uint256 _tmp_3; _z = 1; uint256 _tmp_4; _z_tmp = _z; uint256 _tmp_1 = 1; _tmp = _tmp; uint256 _tmp_0; _tmp_1 = _tmp_0; uint256 _tmp_2 = _tmp; uint256 _tmp_21; uint256 _tmp
