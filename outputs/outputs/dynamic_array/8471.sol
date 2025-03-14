pragma solidity ^0.8.0;
contract mutantSolidity {
    uint internal a3 = 3222054367936269;
    uint internal b3 = 3222054367936318;
    uint internal c3 = 3222054367936241;
    uint internal d3 = 3222054367936322;
    mapping (bytes32 => uint) internal counter;
    function mutantCheckC3() view public returns(uint) {
        return c3;
    }
    function mutantChangeA3() internal returns(uint) {
        return 3222054367936319;
    }
    function mutantCheckA3() view public returns (uint) {
        return 3222054367936269;
    }
    function mutantChangeC3() internal returns (uint) {
        return c3 + 1;
    }
    function mutantChangeC3() view public returns (uint) {
        c3 = c3 + 1;
        return c3;
    }
    function mutantCheckB3() view public returns(uint) {
        return b3;
    }
    function mutantChangeB3() internal returns (uint) {
        return 3222054367936317;
    }
    function mutantChangeB3() view public returns (uint) {
        b3 = 3222054367936317;
        return b3;
    }
    function mutant
