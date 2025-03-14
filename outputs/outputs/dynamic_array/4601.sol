pragma solidity ^0.8.0;
contract Test {


    assembly {
        let result := add(4, 1)
        let result := add(add(result, 1), 1)
        let result := add(add(add(result, 8), 42), 1)
    }
}
