pragma solidity ^0.8.0;
contract Test50Mutant {
    function _mutate(uint i) internal {
        x[i] += 5;
        y[i] = 42;
    }
}

pragma solidity ^0.8.0;
contract Test51Mutant {
    string[] public s;
    function _mutate(uint i) internal {
        s[i] = "42";
    }
}

pragma solidity ^0.8.0;
contract Test52Mutant {
    uint i;
    function _mutate(uint i) internal {
        i++;
    }
}
