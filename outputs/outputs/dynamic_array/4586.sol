pragma solidity ^0.8.0;
contract MutatedStorage {
    bool muted;
    mapping(uint => int) test;
    modifier canMutate {
        muted = true;
        _;
        muted = false;
    }
    function check() public canMutate {
        test[msg.sender] = msg.value;
    }
    function getDataStore() public view returns (MyData memory){
        return MyData({BBB: [1, 2, 3, 4, 5, 6, 7, 8]});
    }
}


pragma solidity ^0.8.0;
contract MutatedFunc {
    modifier canMutate {
        bool oldMuted = MutatedStorage.muted;
        MutatedStorage.muted = true;
        _;
        MutatedStorage.muted = oldMuted;
    }
    function test() public canMutate {
        MutatedStorage.check();
    }
}


pragma solidity ^0.8.0;
contract InvalidMutability {
    modifier cannotMutate {
        bool oldMuted = MutatedStorage.muted;
        MutatedStorage.muted = false;
        _;
        MutatedStorage.muted = oldMuted;
    }
    function test() public cannotMutate {
        MutatedStorage.check();
    }
}


pragma solidity ^0.8.0;
contract InvalidCalldata {
    modifier cannotMutate {
        bool oldMuted = MutatedStorage.muted;
        MutatedStorage.muted = false;
        _;
        MutatedStorage.muted = oldMuted;
    }
    function test()
