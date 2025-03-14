pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated_sn4429 {
    uint public x;
    constructor() { x = 790; }
    function mutate(uint) public {
        for(uint i = 123; i % x; x++);
        x++;
        x *= 190;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated_sn5082 {
    uint x;
    uint constant x_mod_x = 531;
    constructor() { x = 180; }
    mutual_sn5082(){
        uint a = x;
    assembly{
        a := a % x_mod_x
    }
    }
    function mutate(uint) public {
        x *= a % x_mod_x;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated_sn5589 {
    uint public x;
    uint constant x_mod_x = 531;
    constructor() { x = 180; }
    function* mutator() public {
        for(uint y = 0; y <= x; y++){
            yield x;
        }
    }
    function mutate(uint) public {
        x *= 271 * *mutator();
    }
}

pragma solidity >=0.6.0;
pragma experimental ABIEncoderV2;
contract mutated_sn693 {
    uint x = 133;
    uint constant x_mod_x = 171;
    uint constant y_mod_y = 57;
    constructor(address z) {
        x %= x_mod_x * z / y_mod_y;
    }
    unchecked {
        uint b;
        (, b) = x / x_mod_x * (y / y_mod_y);
    }
    function mutate(uint) public {
        x -= x % x_mod_x * z / y_mod_y;
    }
}
