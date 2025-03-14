pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample44 {
    uint public i;
    function increaseByOneAndTEN(uint d) public returns (uint) {
        ++i;
        return i;
    }
    function increaseByTenAnd10(uint b) public {
        ++b;
    }
    function increaseByTenAnd20(uint a) public {
        i = a + i;
    }
    function increaseBy100And20(uint j) public {
        i = j + i;
    }
    function increaseBy100And10(uint w) public {
        i = w + i;
    }
    function increaseBy5000And20(uint c) public {
        i = c + i;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample55 {
    uint public id;
    uint public i;
    uint public j;
    function increaseByOneAndTEN() public {
        id = id + 1;
        i = i + 1;
        j = j + 10;
    }
    function increaseByTenAnd10() public {
        id = id + 10;
        i = i + 10;
        j = j + 1;
    }
    function increaseByTenAnd20() public {
        i = i + i;
    }
    function increaseBy100And20() public {
        i = j + i;
    }
    function increaseBy100And10() public {
        i = w + i;
    }
    function increaseBy5000And20() public {
        i = c + i;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Greeter {
    event Greeted(string _name);
