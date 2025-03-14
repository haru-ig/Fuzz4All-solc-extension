pragma solidity ^0.8.0;
contract MutatedWithNew {
    constructor() {
        MutatedWithOld old;
        (bytes memory _previous) = old.testPrevious();
        new Bytes(abi.decode(_previous));
    }
}

contract MutatedWithNew2 {
    constructor() {
        MutatedWithNew old;
        (bytes memory _previous) = old.testPrevious();
        new Bytes(abi.decode(_previous));
    }
}
