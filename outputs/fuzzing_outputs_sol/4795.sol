pragma solidity ^0.8.0;
library Math {

    function mul(uint a, uint b) internal pure returns (uint) {
        if (a == 0) {
            return 0;
        }

        uint c = a * b;
        require(c / a == b);
        return c;
    }
}
pragma solidity ^0.8.0;
contract Caller {
    address[] storage public people;


    constructor(address[] storage newPeople) {
        people = newPeople;
    }


    function getPeople() view public returns (address[]) {
        return people;
    }


    function saveData(uint256 index, address saveData) public returns (bool) {
        people[index] = saveData;
        return true;
    }


    function deleteAddress(uint256 index) public {
        require(index < people.length, "index out of bounds");

        address temp = people[index];

        delete people[index];

        people.length -= 1;


        emit AddressDeleted(index, temp, temp.balance);
    }


    function deleteAddressAndReturn(uint256 index) public {
        require(index < people.length, "index out of bounds");

        emit AddressDeleted(index, people[index], people[index].balance);

        people.length -= 1;

        people[index] = people[people.length];
        people[index].balance = 0;
    }
}

pragma solidity ^0.8.0;
address[] external people;
contract ComplexUseCaller {
    uint256[] public addressBalances;


    constructor(bool changeStorage) {
        if (changeStorage) {
            people = new address[](people.length);
        }
    }


    function returnAddressesAsStored() view public returns (address
