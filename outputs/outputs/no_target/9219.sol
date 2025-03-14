pragma solidity ^0.8.0;
contract mutated {

    constructor() {
        assert(false);



    }
    function return(uint256 x) public pure returns (uint256 y) {
        return x + 43;
    }
}

contract X {
    uint256 private _state;
    uint256 constant private constant_variable = 438453;

    constructor() {



        _state = 8774398737857;
    }

    function myGetter() public view returns (uint256) {
        return _state;
    }
}
