pragma solidity ^0.8.0;
contract Mutated is Mutated {
    bytes32 public constant MUTATABLE = "Mutated";
}
contract SingleUse is Mutated {
    bytes32 public constant SINGLE_USE = "SingleUse";
}
contract Test1 {
    function mutated() returns (bytes32) {
        if (MUTATABLE!= SingleUse(this).MUTATABLE)
            return SingleUse(this).SINGLE_USE;
        return MUTATABLE;
    }
}
contract Test2 {
    function mutated() returns (bytes32) {
        if (MUTATABLE!= SingleUse(this).MUTATABLE)
            return SingleUse(this).MUTATABLE;
        return MUTATABLE;
    }
}
