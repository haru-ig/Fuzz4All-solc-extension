pragma solidity ^0.8.0;
contract Mutated {
function mutate() payable public {
}
    struct B {
        uint256 min;
        uint256 max;
    }
    struct B2 {
        uint256 min;
        uint256 max;
        uint256 mult;
    }
    function test(B _b, B2 _b2) view public {
        require(_b.min == 32);
        var _var;
        _var = uint256(18);
        require(_var == _var);
        require(_b.min == _b2.min);
    }
}
