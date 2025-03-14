pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback2 {
    uint[90000] a;

    constructor () {
        assembly {
            mstore(0, add(0,0))
        }
    }


    fallback() payable {
        assembly {
            sstore(add(0,0), 1)
        }
    }


    fallback() {
        assembly {
            sstore(add(0,0), 1)
        }
    }
}

pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback {
    function a() {
        assembly {
            sstore(add(0,0), 1)
        }
    }


    fallback() {
        assembly {
            sstore(add(0,0), 1)
        }
    }
}
