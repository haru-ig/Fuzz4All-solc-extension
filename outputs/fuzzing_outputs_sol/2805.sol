pragma solidity ^0.8.0;
contract MutatedCaller {

    modifier onlyCaller2 {
        require(msg.sender == address(0x6B1882A9cb63f1946E121181E662B4cA98d9a899), "caller: Not the caller?");
        _;
    }

    function mutatedMethod() public onlyCaller2 {
        assembly {
            let size := mload(0x40)
            calldatacopy(0, 0xffffffffffffffff1600, 0x141)
            let pos := calldataload(0)

            let data := add(calldataload(0x1600), 0x1600 * add(pos, 0x2000))
            falldatacopy(data, 0, 0xffffffff)
            revert(0, size)
        }
    }
}
