pragma solidity ^0.8.0;
interface I3aEvents {
    event newEvent(uint);
    event newEvent(uint, uint);
}


contract C {
    constructor() {
        I3aEvents (address (this)).e(0);
        I3aEvents (address (this)).ee((uint)2*3);
    }
}
