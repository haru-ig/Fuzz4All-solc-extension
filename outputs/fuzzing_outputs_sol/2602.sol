pragma solidity ^0.8.0;






contract myContract {
    uint public fallbackValue;
    constructor() payable {
        fallbackValue = 1;
    }
}
