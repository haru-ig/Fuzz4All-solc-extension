pragma solidity ^0.8.0;
contract MutateAssembly9 {

    function test() view public {
        string memory b = "10";
        uint256 a = 0xffffffff;
        uint256 c;
        uint b;
        uint a;

        assembly {
            let ptr := mload(0x0)
            mstore(0x0, b)
            c := a
            mstore(0x0, sub(1, c))
        }
    }
}
