pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutatedTwo {
    uint constant public _Amount68 = 15;
    uint constant public _Value69 = 250;
    Event event67;
    constructor () public {
        { }
        event67.emit();
        uint256 _x = event67.RETURN;
        event67.emit();
    }
    function test () public {
        if ((~_Amount68 + ~_Value69) <= (~_Amount68 + ~_Value69)) {
            revert();
        }
    }
}
