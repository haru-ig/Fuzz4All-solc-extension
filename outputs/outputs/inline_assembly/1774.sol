pragma solidity ^0.8.0;
contract Example{
    uint x;
    constructor() {
        x = 1;
        x = x + 1;
    }
    function f() public {
        x = x - 1;
    }
    function get_val() public view returns (uint) {
        return x;
    }
}

pragma solidity ^0.8.0;
contract Example{
    uint x;
    uint y;
    uint z;
    constructor() {
        x = 1;
        y = 2;
        z = 3;
        x = x + 1;
        y = y + 2;
        z = x + y + 3;
    }
    function get_val() public view returns (uint) {
        return  x + y + z;
    }
}
