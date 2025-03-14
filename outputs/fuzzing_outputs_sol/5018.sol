pragma solidity ^0.8.0;
contract FallbackMod {
    function mutate() internal {
    }
}
contract Caller {
    function callAndThrow(address to, bytes calldata data) internal {
        uint x = to.call(data);
        require(x == 0);
    }
}
