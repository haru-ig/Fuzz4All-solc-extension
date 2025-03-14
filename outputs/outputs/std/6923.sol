pragma solidity ^0.8.0;
contract Mutation_FunctionCaller6_Mutated {
    function removeFirstElement(uint128[] memory _new_array) public {
        uint128 first = _new_array[0];
        uint128 second = first + 1;
        _new_array[0] = first;
        _new_array[1] = second;
    }
}

pragma solidity ^0.8.0;
contract Mutation_FunctionCaller6_MutatedWithConstructor {
    uint8 internal constant num_bytes = 32;
    uint128[] internal array_state;

    constructor() public {


        uint256 i;
        for (i = 0; i < num_bytes; i++) {
            array_state.push(uint128(i));
        }
    }


    function removeFirstElement() public {
        uint256 i;
        uint8 num_bytes = array_state.length;

        for (i = 0; i < num_bytes; i++) {
            uint256 rand_num = uint256(uint8(uint8(rand() % 255)));
            array_state[i] = array_state[i] - rand_num;
        }
    }
}
