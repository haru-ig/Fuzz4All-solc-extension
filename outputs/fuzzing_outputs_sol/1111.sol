pragma solidity ^0.8.0;
contract ComplexMutation11_Old {
    function caller(bytes32 arg) public pure {
        (bool isReturned, bytes memory result) = addr.call{value: 1 ether}("");
        require(isReturned);

    }
}
