pragma solidity ^0.8.0;
contract Counter_LiterallyEquivalent {
    uint private _i;
    event Incremented (uint _i);
    method increment() public  {
        _i += 1;
        emit Incremented(_i);
    }
}
contract Counter_SemanticallyDifferent {
    uint private _i;
    event Incremented (uint _i);
    method increment() public pure {
        _i += 1;
        emit Incremented(_i);
    }
}
