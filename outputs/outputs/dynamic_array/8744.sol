pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity57_change_75 {
    uint[8][2] public m;
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity57_calldata_76 {
    uint[8] public ret;
    function calldata() public view returns (uint[8]) {
        ret = [1,2,3,4,5,6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18];
        return ret;
    }
    function test1() public view onlyPayloadSize(2048) returns (uint[8]) {
        return [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18];
    }
    function test2() public pure returns (uint[8] memory) {
        ret = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18];
        return m;
    }
}
