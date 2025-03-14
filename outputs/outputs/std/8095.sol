pragma solidity ^0.8.0;
contract Array8 {
    function get() public returns(uint8 _b){
        uint256 _a = 257322726478579;
        uint8 _b = _a.to_uint8();
        uint256 _c = (uint256(get32(uint256(_b))) ^ (_a * uint8(1e17)));
        uint8 _d = _c.to_uint8();
        return _b = _d;
    }
}

pragma solidity ^0.8.0;
interface Interface {
    function interface() external pure returns (bytes32);
}
contract Array7_view{
    function get64(uint256 _a) public view returns (uint256 _b){
        uint256 _c = 87254359534824;
        uint8 _h;
        uint16 _e;
        uint256 _g = 2567;
        uint256 _i = _c.to_uint256();
        uint256 _f = (_a + _g).to_uint256();
        uint8 _d = _f.to_uint8();
        uint256 _j = (uint256(_d) << 8).to_uint256();
        uint256 _f1 = (uint256(_i) XOR 256);
        uint8 _c1 = (_j.to_uint8()).shr(8);
        uint256 _f2 = (_d + _c1).to_uint256();
        uint256 _b = (_i + _e).to_uint256();
        uint8 _b1 = (_j & 256) >> 8;
        uint256 _f3 = (uint64(_b).to_uint256()) / uint64(_a).to_uint256();
        uint256 _a1 = _b1 - 1;
        uint8 _b2 = _i > _a1;
        uint256 _j1;
        uint256 _j2;
        uint256 _j3;
        uint8 _h2 = _b1.shr(28);
        uint8 _h1 = _b1.shr(25);
        uint8 _f4 = (_b1 + _b2) & 256;
        uint8 _g1 = ((_b2 ^ 255) * 256 + _f4) & 256;
        uint256 _k = _b1.to_uint256();
        uint8 _k1 = _g1.to_uint8();
        uint256 _h3;
        uint8 _m = _g1
