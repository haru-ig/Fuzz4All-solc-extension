pragma solidity ^0.8.0;
contract C9 {
    bool public constant x = true;
}
contract C10 {
    bool public constant x = true;
}
contract C11 {
    uint public constant x = 1;
}

pragma solidity ^0.8.0;
contract C12 {
    bool public constant check = isZero(false);
    function isZero(bool x) public pure returns (bool) {
        if (x == true) {
            return false;
        }
        return true;
    }
}

pragma solidity ^0.8.0;
contract C13 {
    bool public constant isZero = isZero(false);
    function isZero(bool x) public pure returns (bool) {
        if (x == true) {
            return false;
        }
        return true;
    }
}
contract C14 {
    bool public constant isZero = isZero(false);
    function isZero(bool x) public pure returns (bool) {
        if (x == false) {
            return false;
        }
        return true;
    }
}
