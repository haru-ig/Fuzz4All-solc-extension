pragma solidity ^0.8.0;
contract ArrayMutations
{
    bool public isA;
    uint public x;
    function setA(uint x_) public {
        x = x_;
    }
    function getA() public view returns (uint) {
        return x;
    }
    function add(uint y) public {
        isA = true;
        x = x + y;
    }
    function subtr(uint y) public {
        x = x - y;
    }
    function mul(uint y) public {
        isA = true;
        x = x * y;
    }
    function div(uint y) public {
        isA = true;
        x = x / y;
    }
    function min(uint y) public {
        x = x >= y? x : y;
    }
    function max(uint y) public {
        x = x <= y? x : y;
    }
    function lt(uint y) public {
    }
    function le(uint y) public {
    }
    function ge(uint y) public {
    }
    function gt(uint y) public {
    }
}

pragma solidity ^0.8.0;
contract ArrayMutationsComp4
{
    using ArrayMutations for ArrayMutations.ArrayMutations;
    bool public isA;
    uint public x;
    constructor() public {
        uint y = 0;
        ArrayMutations.ArrayMutations.setA(3);
        ArrayMutations.ArrayMutations.getA();
        ArrayMutations.ArrayMutations.add(3);
        ArrayMutations.ArrayMutations.subtr(0);
        ArrayMutations.ArrayMutations.mul(3);
        ArrayMutations.ArrayMutations.div(3);
        ArrayMutations.ArrayMutations.min(0);
        ArrayMutations.ArrayMutations.max(0);
        ArrayMutations.ArrayMutations.lt(3);
        ArrayMutations.ArrayMutations.le(0);
        ArrayMutations.ArrayMutations.ge(0);
        ArrayMutations.ArrayMutations.gt(0);
    }
    function setA(uint x_) public {
        x = x_;
        isA = true;
    }
    function getA() public view returns (uint) {
        return x;
    }
}
