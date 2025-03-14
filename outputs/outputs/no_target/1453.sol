pragma solidity ^0.8.0;
contract Semantic0032 {
    function notMutant() public pure {
        iF (false == true) {
        }
        elseIf (false == true) {
        }
        else {
            RETURN;
        }
    }
}
