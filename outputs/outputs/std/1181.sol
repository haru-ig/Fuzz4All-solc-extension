pragma solidity ^0.8.0;
contract A {
   bytes32 public x;
   function f(bytes32 a) public returns (uint) {
       x = a;
    return 0;
   }
}


pragma solidity ^0.8.0;
contract B2 {
   function uintStr(uint index, uint _uint) public pure returns (string memory) {
        uint[] memory v = new uint[](10);
        v[uintStr("a",8)] = 1000000;
        return uint2str(v, true);
   }
   function strUint(uint256 _uint) public pure returns (uint) {
       uint[] memory v = str2uint(uintStr(_uint), false);
       return v[uintStr("a",5)];
   }
   function str2uint(string memory _str, bool allowHexFallback) public pure returns (uint[]) {
        uint[] memory res = new uint[](0);
        if (!_str.isEmpty()) {
            uint hexLen = byteCount(_str);
            uint[] memory bytes = stringToBytes(_str);
            uint size = (bytes.length / uint(2));
            for(uint i = 0; i < uint(size); ++i) {
                res.push(uint8(bytes[i*2] + bytes[i*2+1] * (256**uint(i)))));
            }
            for(uint i = bytes.length - 1; i >= 0; --i) {
                byte(bytes[i]);
                if (bytes[i] == 0) {
                    res.push(0);
                }
            }
        }
        return res;
   }
   function _uint2str(uint[] memory _uints, bool allowHexFallback) internal pure returns(string memory) {
       uint[] memory result = new uint[](0);
       for(uint i = 0; i < _uints.length; ++i) {
           result.push(uintStr(bool(allowHexFallback), _uints[i]));
       }
       return uint2str(result, false).toString();
   }
   function uint2str(uint[] memory _uints, bool allowHexFallback) public pure returns (string memory) {
       return (allowHexFallback)? bytes2str(uint2bytes(_uints, allowHexFallback)) : _uint2str(_uints, allowHexFallback);
   }
   function bytes32str(bytes32 _b32) public pure returns (string memory) {
       uint [] memory res_uint = bytesStrUint(_b32);
       return uint2str(res_uint, false);
   }
   function uint2bytes(uint[] memory _uints, bool allowHexFallback) public pure returns (bytes memory) {
        if (allowHexFallback) {
            return bytes2bytes(_uints, allowHexFallback);
        } else {
            bytes32[] memory res_b32 = new bytes32[](_uints.length);
            for(uint i = 0; i < res_b32
