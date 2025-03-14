pragma solidity ^0.8.0;
contract Modul{
    bytes32 constant test2 = "test2";
    bytes32 constant test3 = "test3";
    bytes32 constant test = "test";
    function solve() public pure returns (bytes32) {
        bytes32 r;
        if(
            test <
            test3
    ) {
        r = 3;
        }
        else
        {
        r = 11;
        }
        return r;
    }
}
pragma solidity ^0.8.0;
contract Modul{
    uint constant test2 = 1347;
    uint constant test3 = 100;
    uint constant test = 1000;
    function solve() public pure returns (uint) {
        uint r;
        if(
            test >=    uint8(test2)
        ) {
            r = 4;
        }
        else  if(
            test >=    uint16(test3)
        ) {
        r = 7;
        }
        else if(
            test >=    uint256(test)
        ) {
        r = 15;
        }

        return uint8(r);
    }
}
*/

pragma solidity ^0.8.0;
contract Modul{
    uint constant test2 = 1347;
    uint constant test3 = 100;
    uint constant test = 1000;
    function solve() public pure returns (uint) {
        uint r;
        if(
            test >=    uint8(test2)
        ) {
                r = 4;
        }
        else  if(
            test >=    uint16(test3)
        ) {
                r = 7;
        }
        else if(
            test >=    uint256(test)
        ) {
                r = 15;
        }
        return r;
    }
}
