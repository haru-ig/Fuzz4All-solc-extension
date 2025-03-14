pragma solidity ^0.8.0;
contract C
{


    event MyEvent(uint256 value, address addresser, bytes calldata data);


    C private cA;

    constructor(address payable   c, uint128 d   )
        public
    {
        cA = c;
        emit MyEvent(d, address(cA), "");
    }
}
