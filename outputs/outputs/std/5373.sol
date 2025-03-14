pragma solidity ^0.8.0;
contract Mutate3 {
    uint256 initialBalance;
    address[] public addressArray;
    address public account;
    constructor() public {
        addressArray.push(address(0xcafeEaddeF0B42BEd041f4B24144cC09E08995e3));
        addressArray.push(address(0xe6F998a933208F1381c0a134044172333347A902));
    }
    function main3() public {
        account = addressArray[3];
        addressArray.push(address(0x6badeadf10653442cC85B8251585258BBEc9A5D1));
        initialBalance = initialBalance + addressArray.length;
    }
}
