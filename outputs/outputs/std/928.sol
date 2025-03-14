pragma solidity ^0.8.0;
contract Mutate3To6
{
    struct Person
    {
        string name;
        bool active;
        uint64 birthday;
        bool alive;

        string homeAddress;
        string contactAddress;
    }

    enum State
    {
        Alive, Dead
    }

    mapping (uint128 => Person) people;

    function addNewPerson(uint64 birthday, string memory name, string memory homeAddress, string memory contactAddress) public
    {
        people[uint128(keccak256(abi.encodePacked(name, birthday, homeAddress, contactAddress)))] =
        Person(name, true, birthday, true, homeAddress, contactAddress);
    }

    function getPerson(address personAddress) public view returns (uint64 birthday)
    {
        birthday = getPersonBirthday(personAddress);
    }

    function getPersonBirthday(address personAddress) public view returns (uint64)
    {
        return people[uint128(keccak256(abi.encodePacked(people[personAddress].name, people[personAddress].birthday)))]
                              .birthday;
    }

    function updateAliveState(uint64 birthday, uint64 aliveUntil) public
    {
        if(people[uint128(keccak256(abi.encodePacked(people[msg.sender].name, birthday)))]
                      .active)
        {
            people[people[msg.sender].birthday] = people[people[msg.sender].birthday];
            delete people[msg.sender];
        }
        for(uint128 addressIndex = msg.sender; addressIndex <= addressIndex * 2; addressIndex += 2)
        {
            people[addressIndex * 2] = people[addressIndex];
            people[addressIndex * 2 + 1] = State.Dead;
        }
        people[uint128(keccak256(abi.encodePacked(people[msg.sender].name, aliveUntil)))]
          .alive = true;
    }
}
