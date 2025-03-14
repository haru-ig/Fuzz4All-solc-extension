pragma solidity ^0.8.0;
contract L10 {
    uint private[10] private values;
    enum T { E
    }
    constructor() public {
        values[0] = 0xab2b344401d8bd7d1733f9a0c2b;

    }
    function test() public {

    }
}
contract L10 {
    uint[10] public publicValues;
    function test() public {
        publicValues[0] = 0xab2b344401d8bd7d1733f9a0c2b;

    }
}
contract L10 {
    function test() public {
        assembly {
            output := 0xab2b344401d8bd7d1733f9a0c2b
        }
        uint256(output)
    }
}
contract L10 {
    function test() public {
        bool = false;
        assembly {
            codeSizeOutput := 0xab2b344401d8bd7d1733f9a0c2b
        }
        uint256(codeSizeOutput)
        bool
    }
}
contract L10 {
    function test() public {
        uint256(contract(address(0x0)).test())
    }
}
