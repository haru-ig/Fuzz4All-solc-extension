pragma solidity ^0.8.0;
contract Semantic0015 {
    function f() public pure {
        bytes memory test;
        (, bytes memory result,) = address(this).call{value: 0}(test);
        return bytes(result);
    }
}
