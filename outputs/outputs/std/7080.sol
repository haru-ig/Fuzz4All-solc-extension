pragma solidity ^0.8.0;
contract BitwiseShlSHR {
    uint256 a;
    function setX() public {
        a = (a << (a << 56)) | (a >> (a >> 32));
        a = (a << (a << 32)) | (a >> (a >> 56));
        a = (a << (a << 16)) | (a >> (a >> 56));
        a = (a << (a << 8)) | (a >> (a >> 56));
        a = (a << (a << 4)) | (a >> (a >> 56));
        a = (a << (a >> 4)) | (a << (a << 8)) | (a >> (a >> 8));
    }
    function sub1() public {
        a = a ^ (a << ((a ^ a << (a ^ a >> 4)) - (a & a << 32) ^ 32));
    }
    function div2() public pure {
        a = a >> (a >> 32) ^ a;
    }
    function sub3() public pure {
        a = a >> (a >> 40) ^ a;
    }
    function div4() public pure {
        a = a ^ a >> (a >> 3) ^ 65534;
    }
}
