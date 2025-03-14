pragma solidity ^0.8.0;
contract mutator120 {
    bool isInitialized;
    uint256 public _h;
    uint8 public _w;
    mapping(uint256 => uint8) public _data;
    constructor() { _h = 0x800;}
}
function isContract(address account) internal view returns (bool) {
    uint256 size;
    assembly {
        size := extcodesize(account)
    }
    return size>0;
}

library SafeMath {
    function add(uint256 a,uint256 b)internal pure returns (uint256 c) {c = a+b;}
    function sub(uint256 a,uint256 b)internal pure returns (uint256 c) {c = a-b;}
    function mul(uint256 a,uint256 b)internal pure returns (uint256 c) {c = a*b;}
    function div(uint256 a,uint256 b)internal pure returns (uint256) {return a/b;}
    function mod(uint256 a,uint256 b)internal pure returns (uint256) {return a%b;}
}<jupyter_output><empty_output>
