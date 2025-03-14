pragma solidity ^0.8.0;
contract S is S {
    function callBack() public pure {
        (bool success, ) = S.call(
            abi.encodeWithSignature("return()"));
        require(success);
        revert("test");
    }
}
