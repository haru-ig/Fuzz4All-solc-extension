pragma solidity ^0.8.0;
contract MutatedFallback {
    function sendWithoutFallback() public {
        assembly {
            let x
            let n
            mstore(add(x, 0x40), 0x20)
        }
    }
    function sendWithFallback() public {
        assembly {
            let x
            let n
            mstore(add(x, 0x40), 0x0)
        }
    }
}
contract MutatedFallbackOnlyPayable {
    fallback() public payable {}
}
contract Caller {
    function callWithFallback() public payable {
        mutatedCaller.sendWithFallback();
    }
}
