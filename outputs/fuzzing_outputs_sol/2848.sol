pragma solidity ^0.8.0;
interface Upgrader1x {
    function upgrade() external returns (bytes32);
}
contract Upgrader2x {
    function upgrade() public returns (bytes32) {
        Upgrader1x(address(this)).upgrade();
    }
}

contract Example {
    Upgrader2x upgrader;

    constructor() {
        upgraded();
        address(upgrader).balance;
    }

    address payable noReentrancy = payable(0x11393A00108448CDD234a69780c429B4C7977547);

    functiobn() public payable returns (address payable) { return noReentrancy; }

    function set(address _from) public returns(address payable) {
        noReentrancy = _from;
        return noReentrancy;
    }

    contract Fallback {

        fallback () {
        }
        receive () { }
        receive () payable { }

        event FallbackEvent();

        fallback () external {}

        receive () payable external { }
    }

    fallback () public {}

    receive () public { emit FallbackEvent(); }

    receive () payable public { emit FallbackEvent(); }

    receive () public returns (address payable) { emit FallbackEvent();  return (address payable(0x11393A00108448CDD234a69780c429B4C7977547)); }
}
