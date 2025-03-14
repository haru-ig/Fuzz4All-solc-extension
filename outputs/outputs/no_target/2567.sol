pragma solidity ^0.8.0;
contract mutationsolidity0822a { function f() public pure { uint x = 0, f +; } }

pragma solidity ^0.8.0;
contract mutationsolidity0822a { function f() public pure { uint x = 0, -f, ++x; } }


pragma solidity ^0.8.0;
contract mutationsolidity0822a {
    constructor(string memory _name, string memory _surname) {}
    function f() public pure {
        bytes memory x = stringToBytes(_name);
        x = stringToBytes((x + _surname));
    }

    string function stringToBytes(string memory source) private pure returns (bytes memory target) {

        assembly {
            let source_size := mload(add(source, 32))
            let target_size := 32
            let ptr := mload(add(target, 32))
            mstoreu(target, mload(add(source, 24)))
            for {
                let i := 0
                let end := mload(add(source, 24))
            } i < end {
                let j := add(j, 1)
                mstore(add(ptr, j), mload(add(source, add(0x20, i))))
            }
            mstore(add(ptr, mload(add(source,
