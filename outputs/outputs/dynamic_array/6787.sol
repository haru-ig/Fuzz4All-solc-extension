pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T35_call_data_array_semantics3 {
    uint256[] public aa;
    uint256[] public bb;
    uint256[13] public cc;
    uint256[13][13] public dd;
    uint256[13][13][13] public ee;
    uint256[] public ff;
    uint256[] public gg;
    function append() public {
        aa.push(0);
        bb.push(0);
        cc.push(0);
        dd.push(0);
        ee.push(0);
        ff.push(0);
        gg.push(0);
    }
    function get(uint256 n) public view returns (uint256) {
        return n;
    }
    function getaa(uint256 n) public view returns (uint256) {
        return na[n];
    }
    function getbb(uint256 n) public view returns (uint256) {
        return nb[n];
    }
    function getcc(uint256 n) public view returns (uint256) {
        return nc[n];
    }
    function getdd(uint256 n) public view returns (uint256) {
        return nd[n];
    }
    function getee(uint256 n) public view returns (uint256) {
        return ne[n];
    }
    function getff(uint256 n) public view returns (uint256) {
        uint256 m = uint256(n) >> 5;
        uint256 idx = m + 16;
        if (m!= 0 && idx!= 16 && idx!= 17) {
            return nf[n];
        }
        return 0;
    }
    function getgg(uint256 n) public view returns (uint256) {
        uint256 m = uint256(n) >> 5;
        uint256 idx = m + 64;
        if (m!= 0 && idx!= 9
