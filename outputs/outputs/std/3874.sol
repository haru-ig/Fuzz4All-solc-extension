pragma solidity ^0.8.0;
contract ArrayExample {

    mapping (address => address[]) private _arrays;

    function add(address _key, uint45[] memory arr1) public {
        require(_arrays[_key].length < arr1.length, 'InvalidArraySize');
        _arrays[_key].push(arr1);
    }
}
