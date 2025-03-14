pragma solidity ^0.8.0;
contract NewSolidity {
    constructor() public {
        bytes memory memoryX;
    }
    function x() public {
        uint[10] memory memoryX;
    }
}

contract NewSolidity {
    address public x;
    uint[10] public memoryX;
    constructor() public {
        assembly {
            let addr := mload(0x40)
            x := addr
        }
    }
    function x() public {
        uint[] public memoryX;
    }
}
