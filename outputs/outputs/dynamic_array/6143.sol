pragma solidity ^0.8.0;
contract Test90011 is Test90005 {
    constructor (uint32 a, uint32 b) Test90005 (b) public { }
    function () public virtual { }
    event Mutate ();
}
