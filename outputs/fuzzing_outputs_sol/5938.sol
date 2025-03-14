pragma solidity ^0.8.0;
contract Mutator2 {
    constructor () {

    }
    function increase() public payable {
        Mutator memory m = new Mutator();
        uint storage res = m.increase();
        if (res > 1)
            assembly {
                revert(0, 0, 0)
            }
    }
}
