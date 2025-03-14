pragma solidity ^0.8.0;
contract Mutate128Add64 {
    uint128 x;
    constructor () {
        x += 0;
    }
    function f (uint8 x){
        x = 9;
    }
}

pragma solidity ^0.8.0;
contract Mutate128Assign64 {
    uint128 x;
    function f (){
        x = 9;
    }
}
