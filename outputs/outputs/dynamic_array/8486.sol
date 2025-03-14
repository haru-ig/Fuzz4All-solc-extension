pragma solidity ^0.8.0;
contract mutantSolidity3159309426 {
    string internal a2 = "6989360712792645";
    string internal b2 = "6989360712792533";
    string internal d2 = "6989360712792670";
    function mutantCheckB2() public pure returns (uint) {
        return a2 == "hello";
    }
    function mutantChangeD2() public pure returns (uint) {
        return b2;
    }
    function mutantCheckD2() public pure returns (uint) {
        return false;
    }
}
