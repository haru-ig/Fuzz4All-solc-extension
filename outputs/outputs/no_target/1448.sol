pragma solidity ^0.8.0;
contract Semantic0031 {
    function notMutant() public pure {
        if (false == true) {
            log1("test 0031");
            return;
        }
        else {
            log0("test 0031");
            return;
        }
    }
}
