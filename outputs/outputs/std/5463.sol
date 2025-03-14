pragma solidity ^0.8.0;
contract Mutate9 {
    uint initialBalance = 10e18;
    constructor() {
        initialBalance += address(this).balance;
    }


}



pragma solidity ^0.8.0;
contract Mutate10 {
    uint initialBalance = 10e18;
    function mutatingFunction(uint _initialBalance) {
        initialBalance += _initialBalance;
        initialBalance -= 10e27;
    }
}
