pragma solidity ^0.8.0;
contract Mutation_FunctionCaller3 {
    function addMiddleElement_Original(uint128[] memory _new_array) public {
        uint128 first = _new_array[0];
        _new_array[0] = first;
        _new_array[0] = 0;
        _new_array[1] = first;
    }
    function removeMiddleElement(uint128[] memory _new_array) public {
        uint128 last = _new_array[_new_array.length - 1];
        _new_array[_new_array.length - 1] = 0;
        _new_array[_new_array.length - 1] = last;
    }
}
contract Mutation_FunctionCaller {
    function removeMiddleElement(uint128[] memory _new_array) public {
        uint128 last = _new_array[uint128(_new_array.length - 1)];
        _new_array[uint128(_new_array.length - 1)] = 0;
        _new_array[uint128(_new_array.length - 1)] = last;
    }
    function randomElement(uint128[] memory _new_array) public {
        uint128 last = uint128((uint128(_new_array.length - 1)) % (uint128(_new_array.length)));
        uint128 new = uint128(_new_array[last]);
        _new_array[last] = 0;
        _new_array[last] = new;
    }
}
pragma solidity ^0.8.0;
contract Mutation_FunctionCaller2 {
    function removeMiddleElement_Original(uint128[] memory _new_array) public {
        uint128 last = _new_array[_new_array.length - 1];
        uint128 first = uint128(last % (_new_array[_new_array.length] - _new_array[_new_array.length - 1]));
        _new_array[_new_array.length - 1] = last;
        _new_array[first] = 0;
        _new_array[first] = last;
        _new_array[_new_array.length] = 0;
    }
    function randomElement(uint128[] memory _new_array) public {
        uint128 last = uint128(uint128(_new_array.length - 1)) % (uint128(_new_array.length));
        uint128 new = uint128(_new_array[last]);
        _new_array[last] = 0;
        _new_array[last] = new;
    }
}
pragma solidity ^
