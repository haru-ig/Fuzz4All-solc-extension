pragma solidity ^0.8.0;
contract Subroutine {
    function test() public pure {
        uint8 x = 3 ;
        test(x);
    alert("The value is: %x", x);
    }
    function test(uint8 j) public pure {
        alert("Here %j is %x", i, j);
    }
    modifier alert(string memory s) {
        _;

    }
}
