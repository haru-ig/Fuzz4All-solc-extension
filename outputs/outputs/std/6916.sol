pragma solidity ^0.8.0;
contract Mutation_FunctionCaller6 {
    constructor() public {}
    function doSomething(uint128 _param) public{
        uint128[1] memory _new_array = new uint128[](1);
        _new_array[0] = _param;
        _new_array[0] += 1;
        _new_array[0] -= 200;
        _new_array[0] /= 7;
        _new_array[0] **= 2;
        _new_array[0] **= 129;
        _new_array[0] * _new_array[0];
        _new_array[0] / _new_array[0];
        _new_array[0] = Mutation_FunctionCaller6.nextNumber(3, 4);
        removeMiddleElement(_new_array);
        _new_array[0] *= 3;
        _new_array[0] >>= 5;
        _new_array[0] |= _new_array[0] << 47 >> 65;
        _new_array[0] %= 0xf2bf438423749e9f;
    }
    function nextNumber(uint64 a, uint64 b) internal pure returns (uint64) {
        return uint64(a * b) ^ ((uint64(a) << 45) + ((uint64(b) << 45) + (uint64(1029) << 32)));
    }
}

pragma solidity ^0.7.0;
