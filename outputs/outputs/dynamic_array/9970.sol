pragma solidity ^0.8.0;
contract SemanticTest7 {
    uint a;
    a = a % 1 ether;
    constructor () public {
        uint[] memory p = new uint[](6);
        p[0] = 1;
        p[3] = 0;
        p[5] = 60;
        if (6 < 5) {
            a--;
        }
        a = 1%2;
    }

    function isOverflow(uint i) public view returns (bool) {
        bool ret;
        if (i <= 1) {
            ret = false;
        } else {
            ret = false;
        }
        return ret;
    }
}
