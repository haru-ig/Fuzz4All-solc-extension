pragma solidity ^0.8.0;
contract Semantic0035 {
    uint public x;
    mapping(uint => mapping(uint => uint)) x;
    function same() public pure {
        uint x;
        x = 0;
        if (false) {
            x = 0;
        }
        x = 0;
    }
}

pragma solidity ^0.8.0;
contract Semantic0036 {
    uint public x;
    function same() public pure {
        uint x;
        x = 0;
        if (true) {
            uint x;
            x = 0;
        } else {
            uint x;
            x = 0;
        }
    }
}
