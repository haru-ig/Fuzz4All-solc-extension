pragma solidity ^0.8.0;
contract C {
    uint256[Immutable.y_] mutable public immutable storage_;
    constructor() public {
    storage_[y_] = 1;
    }
    function f() public pure {
        require(storage_[y_] == 1);
    }
    function g(uint256 x_) public pure {
        storage_[x_] = (storage_[x_] + 1) * 1;
    }
    function h(uint256[2][] memory arr) public pure {
        for(uint i=0; i < arr.length; i++) {
            require(storage_[2*i] == 0);
            require(storage_[2*i + 1] == 0);
            storage_[2*i] = 0;
            storage_[2*i + 1] = 0;
            storage_[2*i] = arr[i][0];
            storage_[2*i + 1] = arr[i][1];
        }
    }
}
