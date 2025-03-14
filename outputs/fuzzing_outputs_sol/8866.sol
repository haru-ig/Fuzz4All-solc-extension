pragma solidity ^0.8.0;
contract CallerAndFallbackTest_V2 {
    address public test;

    struct Storage {
        uint64 i;
    }

    Storage storage = Storage(0xf44686ec30ea610d6d05d063362a9397b);

    modifier noThrow(uint size) {
        (bool success, ) = address(i).call{value: gas()}("");
        assert(success);
        i = i + size;
        _;
    }

    constructor();


    function() public payable noThrow(10) {

    }

    receive() public payable noThrow(10) {

    }
}
contract CallerTest {
    address public myAddress;
    address public fallbackAddress;


    function() public payable {
        myAddress.call{value: msg.value}("");
    }

    function () public payable {
        fallbackAddress.call{value: msg.value}("");
    }
}
