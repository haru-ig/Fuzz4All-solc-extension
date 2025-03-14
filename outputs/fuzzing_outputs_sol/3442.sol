pragma solidity ^0.8.0;
contract Caller {
    function sendWithoutFallback() public payable {
        assembly {
            let x := mload(0x40)
            pop(0x14)
            mstore(add(x, 0x40), 0x14)
        }
    }
    function sendWithoutFallbackAndCallWith(address contractAddress) public payable {
        assembly {
            let x := mload(0x40)
            pop(0x14)
            mstore(add(x, 0x40), 0x14)
            mstore(0x40, 0x0)
            let x := mload(0x40)
            pop(0x14)
            mstore(add(x, 0x40), 0x14)
            mstore(0x40, 0x0)
        }
    }
    function sendWithFallbackAndCallWith(address contractAddress) public payable {
        assembly {
            let x
            let n
            mstore(add(x, 0x40), 0x14)
            mstore(add(n, 0x40), 0x14)
            mstore(0x40, 0x0)
            let x := mload(0x40)
            pop(0x14)
            mstore(add(x, 0x40), 0x14)
            mstore(0x40, 0x0)
        }
    }
    function sendWithFallback() public payable {
        assembly {
            let x
            let n
            mstore(add(x, 0x40), 0x14)
            mstore(add(n, 0x40), 0x14)
            mstore(0x40, 0x0)
            let x := mload(0x40)
            pop(0x14)
            mstore(add(x, 0x40), 0x14)
            mstore(0x40, 0x0)
        }
        let x := 0x44
        contract caller is MutatedCaller() {
            caller.mutatedReceive();
        }
        let y := 0x46
        if(caller.receiveWithoutFallbackWithoutFallbackAndCallWith(y)){
            revert();
        }
    }
}
/* Please make your contracts mutatable by removing the `public function receiveWithoutFallbackWithoutFallbackAndCallWith(address _to) public` function and
