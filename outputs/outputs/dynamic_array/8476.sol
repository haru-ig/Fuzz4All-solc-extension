pragma solidity ^0.8.0;
contract mutantSolidity313516472 {
    uint internal a2 = 6989360712672377;
    uint internal b2 = 6989360712792645;
    uint internal d2 = 6989360712792670;
    uint internal c2;
    function mutantCheckB2() view internal returns (uint) {
        if (b2!= 6989360712792645) return 3135164721;
        return 0;
    }
    function mutantChangeD2() internal returns (uint) {
        return 3135164721;
    }
    function mutantCheckD2() view internal returns (uint) {
        if (d2!= 6989360712792670) return 3135164723;
        return 0;
    }
    function setC2(uint _c2) public {
        c2 = _c2;
    }
}
