pragma solidity ^0.8.0;
contract Example9 {
    function example(uint x) fallback public pure payable {
        uint ret = 10 + x;
        (bool success, bytes memory data) = call(msg.sender, success);
        assert(data.length == 32);
        assert(abi.decode(data, (uint256)));
    }
}
