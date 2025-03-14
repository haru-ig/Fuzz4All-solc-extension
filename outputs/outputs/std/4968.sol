pragma solidity ^0.8.0;
contract Mutate {
    address payable a;
    event Birth(address _from);
    constructor() {

    }
    function testMutated() public payable {
        Birth(this);
    }
}

pragma solidity ^0.8.0;
