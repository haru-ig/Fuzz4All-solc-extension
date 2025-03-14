pragma solidity ^0.8.0;
contract Modifiers {
    uint initialNumber = 1;
    uint constant x = 2;
    function test (uint x) public {
        assembly {
            mstore(0x50, add(x, initialNumber))
            initialNumber := add(initialNumber, 1)
        }
    }
}

pragma solidity ^0.8.0;
contract Modifiers {
    uint constant x = 1;
    function test (uint x) public {
        uint storedNumber = 0;
        assembly {
            storedNumber := mload(0x50)
        }
        if (storedNumber==x) return;
        require(false);
    }
}
