pragma solidity ^0.8.0;
contract Example8Mutated {
    function fallback(uint, bytes calldata) public payable {
        _;
    }
        modifier callOnReceive(bytes memory data) {
            _;
        }
        modifier payableOnly {
            require(msg.value >= 150 ether + msg.value);
            _;
        }
        function add(uint x, uint y) public payableOnly {

        }
        function subtract(uint x, uint y) public payableOnly {

        }
}
