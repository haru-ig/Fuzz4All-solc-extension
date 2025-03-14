pragma solidity ^0.8.0;
contract Gang
{
    struct GangMember
    {
        string name;
        uint balance;
        uint level;
    }
    mapping(uint8 => GangMember) public gang;
    constructor() {
        for(uint8 i = 0; i < 8; ++i) {
            string memory name = "Member";
            gang[i] = GangMember(name, 0, i + 1);
        }
    }
    function setName(uint8 index, string memory newName) public {
        require(index >= 0 && index < 8);
        require(newName.length > 0);
        gang[index].name = newName;
    }
    function setBalance(uint8 index, uint amount) public {
        require(index >= 0 && index < 8);
        gang[index].balance = amount;
    }
    function setLevel(uint8 index, uint8 level) public {
        require(index >= 0 && index < 8);
        gang[index].level = level;
    }
}
