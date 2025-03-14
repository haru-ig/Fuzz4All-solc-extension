pragma solidity ^0.8.0;
contract Main {
    mapping(address => bool) public blackboxes;
    mapping (address => bool) public blackboxes2;
    event BlackboxCreated (address indexed owner);
    constructor () public {
        blackboxes[0x5856E343DD5f28fBE31944E0f4B7D560F9D5dD7a] = true;
        blackboxes2[0x5856E343DD5f28fBE31944E0f4B7D560F9D5dD7a] = true;
        blackboxes[0x36ea7e46b7f629d7cf5755610f735e03dc829be7] = false;
        blackboxes2[0x36ea7e46b7f629d7cf5755610f735e03dc829be7] = false;
    }
    function createBlackboxes (address blackbox) public { blackboxes[blackbox] = true;  blackboxes2[blackbox] = false;}
}
