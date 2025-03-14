pragma solidity ^0.8.0;
import './Mutate55.sol';
contract Mutate57 {
    Mutate55 s_;
    constructor () public {
        s_ = new Mutate55( 1u );
    }
    function mutate() public {
        s_.add(3);
        s_.add(5);
        s_.add(63);
    }
}
