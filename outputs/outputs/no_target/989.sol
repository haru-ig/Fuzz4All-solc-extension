pragma solidity ^0.8.0;
interface SemanticMutation {

    function update(uint)
        public
        pure
        returns (uint);
}
pragma solidity 0.8.0;
contract SemanticMutation21 {
    SemanticMutation private _semantic = SemanticMutation(0x05);
    function update(uint) public pure {
        _semantic.update(42);
    }
}
pragma solidity 0.8.0;
contract SemanticMutation22 {
    uint private _initialValue =  0x05;
    SemanticMutation private _semantic = SemanticMutation(_initialValue);
    function update(uint) public pure {
        _semantic.update(42);
    }
}
pragma solidity 0.8.0;
contract SemanticMutation23 {
    uint private _initialValue =  0x05;
    uint private _limit =  0xffffffffffe5000000000000000000000000000;
    SemanticMutation private _semantic = SemanticMutation(_initialValue);
    function update(uint) public pure {
        assembly {
            if mload(0x40) > _limit {
               mstore(mload(0x40), revert(0, 0))
            }
        }
        _semantic.update(42);
    }
}
