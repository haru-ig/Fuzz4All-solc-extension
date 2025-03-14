pragma solidity ^0.8.0;
contract Mutators {
    uint constant x = 1000;
    function test() public {
        uint r = x++;
    }
}
address payable contractOwner;
assembly {
    contractOwner := mload(0x40)
}
address public owner;
assembly {

    if mload(0x0) == 0 {
        (bool success, ) = owner.call{value:10 ether}("");
        require(success);
        mstore(0x0, 1)
    } else {

        mstore(0x0, 0)
    }
}
