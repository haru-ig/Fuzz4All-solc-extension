pragma solidity ^0.8.0;
contract Test44 {
    struct User {
        string name;
        uint admin;
    }
    struct UserData {
        User[] users;
        uint numUsers;
    }
    UserData userData;

    function addUser() public {

        userData.users.push(UserData.User({name:"Alice", admin: 1}));


        userData.users.push(UserData.User({name:"Bob", admin: 2}));
        userData.users.push(UserData.User({name:"Bobby", admin: 2}));

        userData.users.push(UserData.User({name:"Boo", admin: 4}));
        userData.users.push(UserData.User({name:"Doo", admin: 5}));
        uint numUsers = userData.users.length;
        userData.numUsers = numUsers;
    }

    function getNumUsers(uint i) public view returns (uint) {
        return userData.users[i].admin;
    }
    function getNumUsersLastAdmin(uint i0) public view returns (uint) {


        return userData.users[numUsers-1-i0].admin;
    }
}
