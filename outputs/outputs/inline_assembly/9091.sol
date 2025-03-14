pragma solidity ^0.8.0;
contract Example
{
    struct Person
    {
        uint id;
        string firstName;
        uint age;
    }
    mapping (uint => Person) public people;
    address contractOwner;
    uint constant ID_MIN_VALUE = 0;
    uint constant ID_MAX_VALUE = 50000;
    mapping(address => uint) accountBalance;

    uint maxContractBalance = 10 ether;
    uint minContractBalance = 0.0001 ether;
    modifier OnlyContractOwner {
        require(msg.sender == contractOwner, "Only contract owner is allowed");
        _;
    }
    constructor() public
    {
        contractOwner = msg.sender;
        require(message.value >= minContractBalance, "Min contract balance required.") {
            revert();
        }
        for (uint i = ID_MIN_VALUE; i < ID_MAX_VALUE; i++) {
            addPerson(i.toString(), "Person" + i.toString(), 200 * i.toString());
        }
        accountBalance[msg.sender] = address(this).balance;
        require(accountBalance[msg.sender] >= minContractBalance, "Account doesn't have enough balance.");
    }
    function addPerson(
        string calldata id,
        string calldata firstName,
        string calldata age
    )public
    {
        uint maxAge = 200;
        uint minAge = 0;
        uint idNum = toUint(id);
        uint ageNum = toUint(age);
        uint ageCheck = ageNum % 1000;
        require(
            (idNum > ID_MIN_VALUE) && (idNum <= ID_MAX_VALUE),
            "Please provide the right ID"
        );
        require(
            ageNum >= minAge && ageNum <= maxAge,
            "Please provide the right age."
        );

        people[idNum] = Person(idNum, firstName, ageNum);
        accountBalance[msg.sender] += address(this).balance - address(this).balance;
        if (accountBalance[msg.sender] >= minContractBalance) {
            if (accountBalance[msg.sender] >= maxContractBalance) {
                address newOwner = msg.sender;
                contractOwner = newOwner;
                accountBalance[newOwner] = address(this).balance - address(this).balance;
                require(accountBalance[newOwner] >= minContractBalance, "Account does not have enough balance.");
            }
        }
        else {
            address oldOwner = contractOwner;
            contractOwner = msg.sender;
