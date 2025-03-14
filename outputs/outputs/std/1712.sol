pragma solidity ^0.8.0;
contract MyContract {
    using Duplicated for uint;

    event Log(bool _output);

    uint public constant R = _100;
}
