pragma solidity ^0.8.0;
contract Modifiers {
    uint constant x = 1e12;
    function test (address) public {
        assembly {
            x := add(x, 32)
        }
    }
}






contract Modifiers_ {
    uint constant y = 3;

    function getCount (address addr) public view returns (uint) {
       x := add(y, 1);
    }
}
/* Test 7:
pragma solidity >=0.8.0;
contract InlineAssemblyBug7 {
    uint x;
    function
