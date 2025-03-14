pragma solidity ^0.8.0;
contract Mutation
{
    uint public a;
    constructor() {
        a = a + 1;
    }
    function update() public {
        assembly {
            _ = a
            _ = a
            _ = a

            _ = a
            _ = a
            _ = a

            _ = a
            _ = a
            _ = a

            a.sub(1)
        }
    }
}
