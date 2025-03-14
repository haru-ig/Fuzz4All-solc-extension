pragma solidity ^0.8.0;
contract NewSolidity {
    function x() public {
        uint[256] public memoryX;
    }
}
pragma solidity ^0.8.0;
contract NewSolidity {
    function x() public {
        uint[256] private memoryX;
    }
}
pragma solidity ^0.8.0;
contract NewSolidity {
    function x() public {
        uint[256] memory memoryX;
    }
}
