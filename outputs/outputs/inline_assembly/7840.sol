pragma solidity ^0.8.0;
contract L26{

    constructor() public {
        testMutability();
    }

    modifier testImmutable {
        if (true) {
            assembly {
                mstore(0, 1)
            }
        }
        _;
    }

    modifier testMutability{
        if (!testImmutable()) {
            assembly {
                mstore(0, 2)
            }
        }
        _;
    }

}
contract L27{

    constructor() public {
        testMutability();
    }

    function testImmutable() public pure returns(uint) {
        return 9;
    }

    function testMutability() public testImmutable {}
}
