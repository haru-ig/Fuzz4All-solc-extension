pragma solidity ^0.8.0;
contract C {
    uint public x;
    receive() public {
        x++;
    }
}

pragma solidity ^0.8.0;
contract C {
    uint public x;
    receive() public {
        x++;
    }
    receive() public {
        x++;
    }
    fallback() external external pure {
        x++;
    }
}
