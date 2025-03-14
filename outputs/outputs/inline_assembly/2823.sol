pragma solidity ^0.8.0;
contract B {
    uint z;
    uint x;
    uint public y;
    constructor() public {
        z = 99;
    }





    function receiveData()
        public
        pure
        returns (contract B memory)
    {
        return (
            contract B(0xDEADBEEF)
        );
    }

    function add() public virtual {
        z -= 1;
        z = z / 100;
        x += z / 10;
    }

    function sub() public pure{
        z += 1;
        z = z / 10;
        x += z / 100;
    }
}
