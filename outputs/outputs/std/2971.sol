pragma solidity ^0.8.0;
contract SomeMath {
    uint x = 32;
    function square(out uint xPow2) external view returns (uint) {
        xPow2 = x * x;
    }
}

pragma solidity ^0.8.0;
contract SomeMath {
    uint x = 32;
    address addr;
    function square(out uint xPow2) external view returns (uint) {
        xPow2 = x * x;
        addr = msg.sender;
    }
}
