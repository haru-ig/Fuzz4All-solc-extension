pragma solidity ^0.8.0;
contract Test9Xx {
    function f_(address[] memory) public pure {
        if (block.timestamp < 10000000000000000) throw;
    }
}
pragma solidity ^0.8.0;
