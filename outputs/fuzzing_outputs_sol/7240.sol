pragma solidity ^0.8.0;
contract ValueMutated {
    function example5() public payable {

        this.valueFor(msg.value);
    }
    function valueFor(uint _value) internal pure returns (uint) {

    }
}
