pragma solidity ^0.8.0;
contract Convert {
    function bytesToDecimal(bytes memory _b) pure public returns (uint) {
        return uint(bytesToUint(_b));
    }
    function bytesToIntArray(bytes memory _b) pure public returns (uint[] memory) {
        uint[] memory ret = new uint[](_b.length);
        uint b = bytesToUint(_b);
        for(uint i = _b.length - 1; i >= 0; i--)
            ret[i] = (b >> (i * 8)) & 0xff;
        return ret;
    }
    function bytesToUint(bytes memory _b) pure public returns (uint) {
        bytes memory b = _b.toHex();
        uint ret = 0;
        uint[] memory barr = barrToString(_b);
        for(uint i = 0; i < barr.length; i++)
            ret += (uint(barr[i]) * (uint(0x10)**i));
        return ret;
    }
    function barrToString(bytes memory b) pure public returns (uint[] memory) {
        uint[] memory ret = new uint[](b.length / 16);
        uint _i = 0;
        while(true) {
            uint bval = uint(_b[16 + 0 + _i]); _b[_i] = '0' + uint(bval); _i++;
            uint bval = uint(_b[16 + 1 + _i]); _b[_i] = '0' + uint(bval); _i++;
            uint bval = uint(_b[16 + 2 + _i]); _b[_i] = '0' + uint(bval); _i++;
            uint bval = uint(_b[16 + 3 + _i]); _b[_i] = '0' + uint(bval); _i++;
            ret[_i - 1] = (uint(0xff) & (uint(0xff) << (_i * 8)))) + (uint(0xff) & (bval));
            if(b[_i - 1] == '0' && _i == 16) break;
            else if(_i == 16) _i = 0;
        }
        return ret;
    }
}



abstract contract ERC20 {

    function totalSupply() public view virtual returns (uint);


    function
