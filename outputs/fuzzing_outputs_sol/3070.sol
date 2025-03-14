pragma solidity ^0.8.0;
contract Example11 is Example10 {
    function Example11(address _addr) public Example10(_addr, 0xf3, 0x18) {}
}

pragma solidity ^0.8.0;
contract Example12 is Example10 {
    constructor(address _addr) Example10(_addr, 0xf3, 0x18) {}
    function Example12() public payable {
        throw;
    }
}

pragma solidity ^0.8.0;
contract Example13 is Example10 {
}
contract FallbackFunctionExample1 {


    struct FallbackFunctionExample1S {
        uint8 a;
        uint8 b;
    }
    function fallback(FallbackFunctionExample1S storage self) payable {}
}

pragma solidity ^0.8.0;
contract Example14 is FallbackFunctionExample1 {
    function Example14() public payable FallbackFunctionExample1(0xf3) {}
    function execute() public payable FallbackFunctionExample1(0xf3) {}
    function Example15() public payable FallbackFunctionExample1(0xf3) {}
}

pragma solidity ^0.8.0;
contract Example15 is Example10 {
    function Example15() public Example10(msg.sender, 0xf3, 0x18) {
        functionExample();
    }
    function functionExample() public { }
}
