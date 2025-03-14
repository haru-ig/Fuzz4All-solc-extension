pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutatedStorage{
    mutatedStorage immutable immutableStorage;

    function mutate() public {
        immutableStorage.a = 0;
    }

    mutatedStorage constructor() public {
        immutableStorage = new mutatedStorage();
        immutableStorage.a = 1;
    }
}
