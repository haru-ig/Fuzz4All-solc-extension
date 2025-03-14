pragma solidity ^0.8.0;
contract Mutator {
    struct Mut {
        uint8 a;
    }
    Mut public mutate;
    function setData(uint _a) public {
        mutate.a = 100;
    }
    function getData() public view returns (uint) {
        return mutate.a;
    }
}

pragma solidity ^0.8.0;
contract NoThrow {
    function throwError() public pure{}
}

pragma solidity ^0.8.0;
contract StorageReader {
    struct State {
        string data;
    }
    State public state;
    function setState(string memory _newState) public {
        state.data = _newState;
    }
    function getData() public view returns (string memory) {
        return state.data;
    }
}
}
