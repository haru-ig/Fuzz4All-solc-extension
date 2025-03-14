pragma solidity ^0.8.0;
contract ModifiedArray{
    mapping (uint => int) private test = [123423,123343];
    function Modify (
        int x,
        int newValue,
        int y
    ) public pure{
        test[y]*=newValue;
    }
}
