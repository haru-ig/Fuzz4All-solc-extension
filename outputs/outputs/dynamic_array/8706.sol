pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity27 {
    event mChanged(bytes32 oldData, bytes32 newData);
    struct Struct {
        bytes8 h;
    }

    uint[102] public m;
    Struct[102] public s;
}


pragma solidity ^0.7.0;
contract semanticallyEquivalentSolidity28_dynamic_29_solidity_0_7_12 {
    event mChanged(bytes oldData, bytes newData);
    struct Struct {
        bytes8 h;
    }

    bytes1[102][102] public m;

    bytes2[102] public s;
}
contract semanticallyEquivalentSolidity28_dynamic_29_solidity_0_9_27 {
    event mChanged(bytes oldData, bytes newData);
    struct Struct {
        bytes8 h;
    }

    uint256[102][102] public m;

    uint256[102] public s;
}
contract semanticallyEquivalentSolidity28_dynamic_29_solidity_0_9_16 {
    event mChanged(bytes oldData, bytes newData);
    struct Struct {
        bytes8 h;
    }

    uint256[102][102] public m;
    uint256[102] public s;
}
contract semanticallyEquivalentSolidity28_dynamic_new_dynamic_arrays {
    event mChanged(bytes oldData, bytes newData);
    struct Struct {
        bytes8 h;
    }

    uint256[102][102][102] public m;
}
contract semanticallyEquivalentSolidity28_dynamic_solidity_0_6_11 {
    event mChanged(bytes oldData, bytes newData);
    uint256[102] public m;
}
contract semanticallyEquivalentSolidity28_fixed_arrays_0_7_4 {
    event mChanged(bytes32 oldData, bytes32 newData);
    uint256[0] public m;
}
contract semanticallyEquivalentSolidity28_dynamic_arrays_sizes {
    event mChanged(bytes arraySizeChange, bytes arrayLengthChange);
    bytes array
