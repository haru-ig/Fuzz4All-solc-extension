pragma solidity ^0.8.0;
contract Burnable {

    function burn(uint256 value) public {

    }
}
contract GrandDemonstration {
    function throwError()
        public
        pure
        returns(bool)
    {
        uint256 a = 0;
        unchecked {
            a = 3;
        }
        if (a > 0) {
            return true;
        }
        return false;
    }
}
