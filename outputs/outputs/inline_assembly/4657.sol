pragma solidity ^0.8.0;
contract mutator83 {

    uint z = 1;

    constructor() {
    z += 1;
    z += 2; } }

pragma solidity ^0.8.0;
contract mutator84 {

    uint z = 1;

    constructor() {
    z += 1;
    z += 2;
    z += 3;} }

pragma solidity ^0.8.0;
contract mutator85 {

    uint z = 1;

    constructor() {
    z += 1;
    z += 2;
    z += 3;
    z += 4;} }

pragma solidity ^0.8.0;
contract mutator86 {

    uint z = 1;

    constructor() {
    z += 1;
    z += 2;
    z += 3;
    z += 4;
    z += 5;} }

pragma solidity ^0.8.0;
contract constructor {
    bytes memory myBytes;
    string memory myString;
    address myAddress;
    uint myUint;

    modifier restricted() {
        myAddress = msg.sender;
        _;
    }

    constructor(bytes memory _myBytes, string memory _myString, address _myAddress, uint _myUint) {
        myBytes = _myBytes;
        myString = _myString;
        myAddress = _myAddress;
        myUint = _myUint;
    }

    function display() public view returns (uint) {
        return myUint;
    }

    function callMeNow() public restricted {
        display();
    }

    function callMeLater() public restricted returns ( uint ) {
        display();
        return myUint;
    }

}
