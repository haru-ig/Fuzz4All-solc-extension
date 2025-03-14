pragma solidity ^0.8.0;
contract mutantSolidity843652215 {
    uint internal a2 = 6989360712792645;
    uint internal b2 = 6989360712792533;
    uint internal d2 = 6989360712792670;
    function mutantCheckB2() view internal returns (uint) {
        if (b2!= 6989360712792533) return 843652215;
        return 0;
    }
    function mutantChangeD2() internal returns (uint) {
        return 843652216;
    }
    function mutantCheckD2() view internal returns (uint) {
        if (d2!= 6989360712792670) return 843652215;
        return 0;
    }
}
