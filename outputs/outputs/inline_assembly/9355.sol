pragma solidity ^0.8.0;
contract A {
       contract B {
        int constant d = 10;
        uint constant r = 10;

        function h() public pure returns (int,uint) {
            return (d,r);
        }
    }

    assembly
    let contractSize := extcodesize(0x0)
    let d := mload(0x40)
    let r := mload(0x40 + 8)

}
