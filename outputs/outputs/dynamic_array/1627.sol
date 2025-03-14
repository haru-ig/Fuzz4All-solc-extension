pragma solidity ^0.8.0;
contract MutatedDynamicArrays2 {
    uint8 y = 0;
    function mutate(uint24 _z) public {
        y = _z;
    }
}

pragma solidity ^0.8.0;
contract MutatedDynamicArrays3 {
    uint8 z = 0;
    function mutate(uint256[1][2][3] memory _u) public {
        z = _u[0][1][2];
    }
}
