pragma solidity ^0.8.0;
contract Old
{
    uint public a;
    constructor() {
        a = a - 1;
    }
    function update() public {
        uint oldA;
        assembly {
            oldA := a
        }
        a = oldA*2;
    }
}
