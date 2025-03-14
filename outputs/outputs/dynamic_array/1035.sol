pragma solidity ^0.8.0;
contract UsingCalldataArrays_Mutated {
    struct User {
        uint256 a;
        uint256 b;
    }

    uint256[] public users;

    event UserAdded(uint256[] users);

    constructor() {
        users.push(200);
    }

    function modify() public {
        User storage user = users[users.length - 1];
        user.a = 1;
        user.b = 2;
    }
}
