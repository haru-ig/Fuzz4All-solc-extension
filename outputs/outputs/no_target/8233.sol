pragma solidity ^0.8.0;
contract Mutated1b {
    address public contractAddress;
}

pragma solidity ^0.8.0;
import "./Mutated1a.sol";
contract Mutated1c {
    address public contractAddress;

    modifier PureModifiers() {
        Mutated1b storage storage = Mutated1b(_storage());
        contractAddress = storage.contractAddress;
        _;
    }

    function _storage() pure external returns (Mutated1b storage memory) {
        return Mutated1b(_storage_());
    }

    function _storage_() private pure returns (Mutated1b storagememory) {
        return Mutated1b(Mutated1b(_storage()));
    }

    uint16 zeroUint16 = 0;
    pure modifier TestPure(uint16 x) pure {
        if (x == 0) {
            throw 1000;
        }
    }
}
