pragma solidity ^0.8.0;
contract NewMutatedSolidity {
    uint[] public x;
    uint public y;
    uint public z;
}
contract TestDynamic {
    function main() public
    {
        NewMutatedFabric _mf = NewMutatedFabric({ x: [ 0, 0, 0 ], y: [ 0, 0 ], z: [ 0 ] });
        NewMutatedSolidity _ms = NewMutatedSolidity({ x: [ 0, 0 ], y: [ 0 ], z: [ 0 ] });
    }
}
