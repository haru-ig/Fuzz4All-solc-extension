pragma solidity ^0.8.0;
contract ReceiveWithFallback {
    constructor (address _fallback) {
        receive() external payable {

        }
        fallback() external payable{

        }
    }
}

pragma solidity ^0.8.0;
contract ReceiveAndFallback {
    constructor(address _fallback) {
        receive() external;
        fallback() external payable {




        }
    }
}
contract FallbackFail {
    constructor () {
        fallback() external {
            assembly {

                returndatacopy(0, 0, 64)
                let size := mload(0)
                switch switch eq(size, 64)
                case 0 { mstore(0, 0) }
                case 1 { mstore(0, 1) }
            }
        }
    }
}

contract NoFallback {
    constructor () {
        fallback() external { }
    }
}
