pragma solidity ^0.8.0;

contract MutatedSemanticallyEquivalentAssemblyExample1 {
    address owner = 0x6403a2C54B7f17f703A9555c76794d0fF0A81B7E;

    Immutable immutable = Immutable({x: 5});
    pragma solidity >=0.6.0;
    function main() public payable {

        immutable.x = immutable.x + 2;

        require(immutable.x == 12);
    }
}
