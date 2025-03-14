pragma solidity ^0.8.0;
contract S9 {
    struct Integer { uint value; }
    function max(Integer x, Integer y) private pure returns(Integer z) {
        return x.value > y.value? x : y;
    }
    constructor(Integer x) public {
        require(x.value > 0);
        max(x, Integer(-1));
    }
}

contract S8 {
    uint constant public value = 1;
}
