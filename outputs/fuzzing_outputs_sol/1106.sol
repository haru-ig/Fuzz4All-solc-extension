pragma solidity ^0.8.0;
contract ComplexMutation10 {
    function caller(bytes32 arg) public pure returns (bool) {
        (bool res, ) = ComplexMutation9.caller{value: 2 ** 256 - 1}(
            "foo"
        );
        return res;
    }
}
