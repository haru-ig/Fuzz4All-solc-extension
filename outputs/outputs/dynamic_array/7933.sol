pragma solidity ^0.8.0;
contract Test29 {
    function f() public g() {
        ids.push("W");
    }
}

pragma solidity ^0.8.0;
contract Test30 {
    struct Item {
        uint256 i_value;
    }
    Item[] public array;
    function f(uint256 x) public {
        array.push(Item(x));
    }
}
