pragma solidity ^0.8.0;
contract MutateSemantic4WithCaller3 {
    event Evt();
    function modifyF() public {
        Evt();
        for (uint i = 0; i < 1000; i++) {
            IERC20 token;
            token.transfer(abi.encode("some address"));
        }
    }
}
