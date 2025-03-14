pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentArrayReconstructor {

    function a() public pure returns (uint[1] memory l) {
        uint[] memory a = new uint[](3);
        a[0] = l[0];
        a.push(0);
        s;
        uint[1] memory r = a;
        return r;
    }
}


contract Main {
    event My(address _sender, uint256 _event_value);
    address payable x = payable(tx.origin);
    constructor () {
        My(x, 1);
    }
}
