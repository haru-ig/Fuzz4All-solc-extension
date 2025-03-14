pragma solidity ^0.8.0;
abstract contract H {
    receive() external payable
    virtual
    pure
    returns (bytes memory);
}
contract S is H {
    fallback() public payable {
        revert("test");
    }
}
