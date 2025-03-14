pragma solidity ^0.8.0;
contract mutantSolidity949655605 {
    uint internal a2 = 6989360712792645;
    uint internal b2 = 6989360712792533;
    uint internal d2 = 6989360712792670;
    uint internal e2 = 6989360712792601;
    uint internal f2 = 6989360712792571;
    function mutantCheckD2() view internal returns (uint) {
        if (d2!= 6989360712792663) return 949655605;
        return 0;
    }
    function mutantCheckE2() view internal returns (uint) {
        if (e2!= 6989360712792601) return 949655605;
        if (f2!= 6989360712792571) return 949655605;
        return 0;
    }
    function mutantChangeF2() internal returns (uint) {
        return 949655606;
    }
    function mutantCheckF2() view internal returns (uint) {
        if (f2!= 6989360712792571) return 949655605;
        return 0;
    }
