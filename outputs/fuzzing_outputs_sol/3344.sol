pragma solidity ^0.8.0;
contract S {
    fallback() external { address payable payableStorageAddress; }
    receive() external payable { }
}

pragma solidity ^0.8.0;
contract S {
    function C() public {
        fallback();
    }
}

pragma solidity ^0.8.0;
contract S {
    function A() public {
        S.fallback();
    }
}
contract S {
    function fallback() public { }
    uint constant EIP1559ReceiverFallback;
}

pragma solidity ^0.8.0;
contract S {
    function A() public {
        S.fallback;
    }
}
contract S {
    function fallback() public { }
    constructor() { }
    uint constant EIP1559ReceiverFallback;
}
