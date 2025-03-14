pragma solidity ^0.8.0;
interface MixedContactsExample501Interface {
    function someOperation() external returns (uint56);
}
contract MixedContactsExample501 is MixedContactsExample500, MixedContactsExample501Interface { }
