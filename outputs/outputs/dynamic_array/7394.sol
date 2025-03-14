pragma solidity ^0.8.0;
contract Test32 {
    address addr1;
    address addr2;
    function modifyTest() public {
        addr1 = addr2;

        dynArr.push(addr1);
        dynArr.push(addr2);
    }
}
