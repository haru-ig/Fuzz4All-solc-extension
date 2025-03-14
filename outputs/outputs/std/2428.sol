pragma solidity ^0.8.0;
contract MutationContract {

    uint public value;
    modifier privateModifier() {
        value += 20000;
        _;
    }

    function() public {}

    function(uint256 a) public {}

    function() public privateModifier { value -= 20000; }
    constructor(uint256 a) public { value = 1 * 10 ** 18 + a; }
}

pragma solidity ^0.8.0;
contract DuplicateContract {

    uint public value;

    function increment() public {
        value += 1;
    }

    function increment1() public privateModifier { value += 1; }
    constructor (uint256 a) public { value = 1 * 10 ** 18 + a; }
}

pragma solidity ^0.8.0;
contract CompileFail {
    constructor () public { value = 0; }
    function setNewValue(uint256 new_value) public { value = new_value; }
    function getNewValue() public view returns (uint256) { return value; }
}
