pragma solidity ^0.8.0;
contract Test69 {
    function a() public {
        address[] memory a = [0x3, 0x5, 0x7, 0x9];

        if (a[0] == 0x3) {
            delete a[0];
        }
        if (a[1] == 0x7) {
            a[1] = 0x5;
        }
    }
}

contract Test70 {
    struct State { uint x; }
    struct Calldata { uint y; }

    function f() public view returns (bool) {
        bool[] memory b = new bool[](2);
        return b[0] || b[1];
    }
}
contract Test71 {
    struct Calldata { struct Calldata foo; uint x; }

    function g() public view returns (bool) {
        return true;
    }
}
contract Test72 {
    struct Calldata { struct Calldata foo; uint x; bool y; require(x == 0, 'bad initial state'); uint z; }

    function h() public view returns (bool) {
        return true;
    }
}
contract Test73 {
    struct Calldata { struct Calldata foo; uint x; uint y; }

    function i() public pure returns (bool) {
        return true;
    }
}
contract Test74 {
    struct State { uint x; uint y; bool z; uint[] f; uint[][] aa; mapping (uint => bool) aa2; }

    function j() public view returns (bool) {
        return true;
    }
}

pragma solidity ^0.8.0;
contract Test75 {
    struct ContractState {
        uint[] x;
        memory y;
    }

    function f4(out ContractState memory) public {
        ContractState memory state = ContractState({ x: new uint[](0) });
    }
}

pragma solidity ^0.8.0;
contract Test76 {
    function f() public {
        uint[] array = new uint[](0);
    }
}
/* Please create a contract that uses storage for internal data, but uses a dynamic array for array storage.
In the example given below, a struct containing a dynamic array can be used for
