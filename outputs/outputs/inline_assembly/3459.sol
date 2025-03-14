pragma solidity ^0.8.0;
contract Mutagen{
    bytes32 constant WATER = keccak256("WATER");
    bytes32 constant ETHER = keccak256("ETHER");
    bytes32 constant GAS = keccak256("GAS");
    function run(uint input) public {
        if (gasleft() >= input) {
            {
                assembly {
                    mstore(0, 0)
                    mstore(0, input)
                    mstore(0, 1)
                    mstore(0, 2)
                    mstore(0, 3)

                    mstore(0, input)


                    returndatacopy(0, 0, 32)

                    let i := returndataload(0)

                    if iszero(i) {
                        div()
                    }
                }
            }
        }
    }
}
