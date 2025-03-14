pragma solidity ^0.8.0;
contract MutatedCase1 {
    function callMutatedCase1_FirstStep() public returns (uint[]) {}
    function callMutatedCase1_SecondStep() public returns (uint[]) {
        return a;
    }
}
contract BadCase8 {
    function callBadCase8a_FirstStep() public returns (uint[]) {}
    function callBadCase8a_SecondStep() public returns (uint[]) {
        return a;
    }
    function callBadCase8b() public returns (uint[]) {}
    function callBadCase8c() public returns (uint[]) {
        function callBadCase8c_FirstStep() public returns (uint[]) {}
        function callBadCase8c_SecondStep() public returns (uint[]) {
            return a;
        }
        return callBadCase8c_FirstStep();
    }
    function callBadCase8d() public returns (uint[]) {}
}
contract MutatedCase3 {
    function callMutatedCase3_FirstStep() public returns (uint) {}
    function callMutatedCase3_SecondStep() public returns (uint) {
        function callMutatedCase3_SecondStep_FirstStep() public returns (uint) {}
        return callMutatedCase3_SecondStep_FirstStep();
    }
}
contract MutatedCase2 {
    function callMutatedCase2_FirstStep() public returns (uint) {}
    function callMutatedCase2_SecondStep() public returns (uint) {
        uint[] calldata args = a;
        return args[1];
    }
}
contract MutatedCase4 {
    function callMutatedCase4_FirstStep() public returns (uint) {}
    function callMutatedCase4_SecondStep() public returns (uint) {
        uint[] memory args = a;
        return args[1];
    }
}
contract MutatedCase5 {
    function callMutatedCase5_FirstStep() public returns (uint256) {}
    function callMutatedCase5_SecondStep() public returns (uint256) {
        uint16[] memory args = a;
        return args[1];
    }
}
