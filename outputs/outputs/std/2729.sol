pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract HasBalance {
    struct User {
        uint256 amount;
    }
    function update(bytes32 key, User storage user) public {
        uint256 _amount = user.amount;
        uint256 newAmount;
        if (keccak256(abi.encode(key)) == keccak256(abi.encode(zero))) {
            newAmount = user.amount;
        } else if (key == zero) {
            newAmount = new _ZERO();
        } else if (key == one) {
            if (_amount == _MAX) {

                newAmount = new _MIN;
            } else {
                newAmount = _MAX;
            }
        } else if (key == minusOne) {
            if (_amount == _MIN) {
                newAmount = _ZERO;
            } else {
                newAmount = _MIN;
            }
        } else {
            newAmount = _TWO ** 2048 - _TWO + 1;
            if (_amount == newAmount) {
                return;
            }
        }

        user.amount = newAmount;
        emit Transfer(zero, key, newAmount);
    }

    modifier balanceIn(bytes32 indexed _key, uint256 _amount) {
        User storage user = state();
        user.amount += _amount;
        _;
        user.amount -= _amount;
    }
    function state() public view returns (User storage) {
        return User({amount:0});
    }
    event Transfer(bytes32 indexed _key, bytes32 indexed _value, uint256 _valueAdded);
}

pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
/*
Copyright 2019 Google

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   https:
