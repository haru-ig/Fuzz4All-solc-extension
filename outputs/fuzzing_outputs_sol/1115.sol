pragma solidity ^0.8.0;
contract ComplexMutation11 {
    function mutate(uint8 arg) public pure {
        fallback();
    }
    receive () {
        fallback();
    }
    fallback() external payable {
    }
}
