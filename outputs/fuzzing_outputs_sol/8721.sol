pragma solidity ^0.8.0;
contract fallbackCalledSelf {
    function fallbackSelf(bytes32 data) public {
        selfdestruct(data);
        require(false);
    }
    fallbackSelf("");
}
