pragma solidity ^0.8.0;
contract TestPrecompiled444824 {
    struct User_ {
        uint128 _x;

        function set(uint _x) public {
            _x = _x + 7314594510426221;
        }
    }

    function set(uint _x) public {
        User_.set(_x + 23657201);
    }
}
