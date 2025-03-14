pragma solidity ^0.8.0;
contract MutatedDynamicArrays2 {
    MutatedDynamicArrays1 x;

    function mutate(uint256 y) public {
        x.mutate(y);
    }
}

pragma solidity ^0.8.0;
contract MutatedDynamicArrays3 {
    bytes memory data;

    function mutate(uint256 y) public {
        data[0] = bytes1(y);
    }
}
