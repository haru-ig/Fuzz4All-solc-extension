pragma solidity ^0.8.0;
contract Mutated_5_5{
    uint z;
    constructor() {

        z = address(this);
    }

    function min3(uint x, uint y) public pure returns (uint) {
        uint z = x;
        x = x <= 1? y : x;
        x = x <= x? x : x;
        z = x <= x? 1 : x;
        return x + z;
    }

}

pragma solidity ^0.8.0;
contract Mutated_5_6{
    uint z;
    constructor() {

        z = address(this);
    }

    function min3(uint x, uint y) public pure returns (uint) {
        uint z = x;
        z = x <= x? 1 : z;
        x = x <= 1? y : x;
        z = x <= z? x : z;
        return x + z;
    }

}

contract Mutated{
    uint[] public array;
    function set(uint _i, uint _v) public {
        array[uint(array.length)] = _v;
    }
    function get(uint _i) view public returns (uint) {
        return array[uint(_i)];
    }
    function len() view public returns (uint) {
        return array.length;
    }
}
