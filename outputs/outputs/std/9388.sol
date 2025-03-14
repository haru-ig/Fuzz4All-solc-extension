pragma solidity ^0.8.0;
contract Mutate
{
    uint256[6 mutated] = {[0, 1]: 99999999999999999999999999999999999999999999999999999999999999999, [1, 0]: 0};
    function mutateD(uint256 _a, uint256 _b, uint256 _c) public returns(uint256)
    {
        uint256[6 mutated] memory foo;
        foo[0] = _a;
        foo[1] = _b;
        foo[_c] = _a + _b;
        foo[_b] = foo[_b] + foo[_b];
        foo[_a] = foo[_a] - _c;
        return foo[_b] + foo[_a];
    }
}
