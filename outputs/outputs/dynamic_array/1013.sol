pragma solidity ^0.8.0;
contract MutatedLotteryWithArrayAccess {
    bool _changed;
    bool[] internal _notChangedBooleanAddressTables;
    bool[] internal _noMutation;
}
contract NonChangeableBooleanTestArray {
    uint2[] internal _data;
}
contract NonChangeableNonEqualBooleanTestArray {
    uint2[] internal _data;
}
