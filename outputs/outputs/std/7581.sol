pragma solidity ^0.8.0;
contract Improvement {

    struct Person {
        uint16 id;
        uint16 balance;
        string firstName;
        string lastName;

        uint16[] items;
    }

    uint16[] public myArray;

    event CreatePerson(address indexed _who, uint16 _id, uint16 _balance, string _firstName, string _lastName);
    event ModifyPerson(address indexed _who, uint16 _id, uint16 _balance);
    event DeletePerson(address indexed _who);

    address public creator;

    uint16 public lastId = 506;
    address[] public addresses;

    constructor(Person[] memory _items) {
        creator = msg.sender;
        uint256 _id = lastId;
        for (uint256 i = 0; i < _items.length; i++) {
            lastId++;
            addresses[i] = _items[i].id;
        }
    }

    modifier isCreator() {
        require(creator == msg.sender, "Creator can't be re-assigned");
        _;
    }

    modifier personExists(uint16 _id) {
        require(myArray[_id]!= 0x0000, "_id doesn't exist");
        _;
    }

    function getId(uint16 _id) public view returns (address who, uint16 id, uint16 balance, string memory firstName, string memory lastName, uint16 _id2) {
        require(myArray[_id]!= 0x0000, "Doesn't exist");
        id = myArray[_id];
        balance = myArray[_id2];
        uint256 index = id % addresses.length;
        firstName = names[index].first;
        lastName = names[index].second;
        who = addresses[index];
    }

    function getPeople() public returns (address[] memory _addresses) {
        _addresses = new address[](addresses.length);
        for (uint i = 0; i < addresses.length; i++) {
            _addresses[i] = addresses[i];
        }
    }

    function getCount() public view returns (uint256 count) {
        count = addresses.length;
    }

    function incrementId(uint16 _id) public {
        lastId++;
        addresses[lastId % addresses.length] = _id;
    }

    function createPerson(uint16 _id, uint16 _balance, string memory _firstName, string memory _lastName) public payable {
        incrementId(_id);
        require((msg.value >= 0), "Cost must be greater than zero");
        require((_balance >= 0), "Balance must be greater than zero");
        require((_id + 1) <= 1000, "Maximal id is 1000");
        require((lastId < 1000), "Reached maximal id");
        addresses[lastId % addresses.length] = _id;
        require((personExists(_id)), "Person doesn't exist");
        require((_firstName.length >= 4), "_firstName length can't be less than 4");
        require((_lastName.length >= 4), "_
