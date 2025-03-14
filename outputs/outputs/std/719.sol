pragma solidity ^0.8.0;
contract MutateMinter {
    MinterInterface public minter;
    constructor() {
    }
    function changeOwner(address newOwner) external {
        minter.changeOwner(newOwner);
    }
    function changeMinter(address newMinter) external {
        minter = MinterInterface(newMinter);
    }

    function changeMutate(address newMinter, address newOwner) external {
        minter = MinterInterface(newMinter);
        minter.changeOwner(newOwner);
    }
}
