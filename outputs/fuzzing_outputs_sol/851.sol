pragma solidity ^0.8.0;
contract FallbackMutator {
    function modmutate(uint8[] memory _arg) private pure {

        uint256[] storage a = _arg;
        a.push(1);

    }
}
