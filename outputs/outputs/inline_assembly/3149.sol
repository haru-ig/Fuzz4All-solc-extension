pragma solidity ^0.8.0;
contract X {
    struct YStruct {
        uint id;
        mapping(address => string[]) userNames;
        function setUserName(uint user, string memory name) internal {
            userNames[user].push(name);
        }
        function greet (uint _id) internal returns(string memory) {
            if (!userNames[_id].length() > 0) {
                string[] memory names = userNames[_id];
                uint length = userNames[_id].length();
                setUserName(_id, names[0]);
                return _id < length-1?
                    (names[_id+1] + ", "+ greet(_id+1)) :
                    ("Congratulations!");
            } else {
                string memory name = balances[_id].name;
                return _id < length-1?
                    (name + ", " + greet(_id+1)) :  (name);
            }
        }
    }
    mapping(address => YStruct) public users;
    function setUser (address _id, string memory _name) public {
        users[_id].setUserName(msg.sender, _name);
    }
    function doGreet (uint _id) public returns (string memory) {
        return users[_id].greet(_id);
    }
}
