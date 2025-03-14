pragma solidity ^0.8.0;
contract C11 {
    receive () externally payable {}
    function () external payable {
        throw 1;
    }
}
