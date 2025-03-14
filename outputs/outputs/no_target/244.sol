pragma solidity ^0.8.0;
IImmutable immutable;

pragma solidity ^0.8.0;
IImmutable immutable;
contract Immutable implements IImmutable {
    function balance() public view returns (uint) {
        return immutable.balance();
    }
}
interface IMutable {
    function _mutate() external;
}
contract Mutated is IMutable {
    function _mutate() public {
        immutable.balance();
        immutable.balance();
    }
}
contract Old is Immutable, Mutated {}
contract New is Mutated {
    function balance() public view override returns (uint) {
        return immutable.balance();
    }
    function _mutate() public override {
        immutable.balance();
        immutable.balance();
    }
}
contract New2 is Mutated {
    function balance() public view view returns (uint) {
        return immutable.balance();
    }
    function _mutate() public view override {
        immutable.balance();
        immutable.balance();
    }
}
contract New3 is Mutated {
    function balance() public view view returns (uint constant) {
        return 0;
    }
    function _mutate() public view override {
        immutable.balance();
        immutable.balance();
    }
}
contract New4 is Mutated {
    function balance() public view view returns (uint constant) {
        return immutable.balance();
    }
    function _mutate() public view override {
        immutable.balance();
        immutable.balance();
    }
}
contract New5 is Mutated {
    function _mutate() public view override returns (uint constant) {
        return immutable.balance();
    }
    function balance() public view override returns (uint) {
        return immutable.balance();
    }
}
contract New6 is Mutated {
    function _mutate() public view override returns (uint constant) {
        return immutable.balance();
    }
    function balance() public view override returns (uint constant) {
        return immutable.balance();
    }
}
contract New7 is Mutated {
    function _mutate() public view override returns (uint constant) {
        return immutable.balance();
    }
    function balance() public view  view returns (uint constant) {
        return immutable.balance();
    }
}
contract New8 is Mutated {
    function _mutate() public view override returns (uint constant) {
        return immutable.balance();
    }
    function balance() public view  view returns (uint constant) {
        return immutable.balance();
    }
}
contract New9 is Mutated {
    function _mutate() public view override returns (uint constant) {
        return immutable.balance();
    }
    function balance() public view  returns (uint constant) {
        return immutable.balance();
    }
}
contract New10 is Mutated {
    function _mutate() public view override returns (uint constant) {
        return immutable.balance();
    }
    function balance() public view view returns (uint constant) {
        return immutable.balance();
