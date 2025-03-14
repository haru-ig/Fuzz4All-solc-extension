pragma solidity ^0.8.0;
contract C {
    bytes20[] b;
    function modifiesArray() public { b.length = 0; }
}

pragma solidity ^0.8.0;
contract C {
    bytes20[] b;
    function modifiesArray() public {
        _ = b.length;
    }
}

pragma solidity ^0.8.0;
contract C {
    bytes20[] public b;
    function modifiesDynamicCalldataArray(bytes20[42] calldata array) public pure {

    }
}
