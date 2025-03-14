pragma solidity ^0.8.0;
contract MutatedSaveable is ISaveable {
    Saveable[2] internal _saveable;
    uint256 _id;

    function save() public view returns (uint256) {
        return _saveable[0].save();
    }
}


```
