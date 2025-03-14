pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType2 {
    address public address0;
    uint256 public uint0;
    event Event1(uint256 _uint0);
    function LogEventAddress0() public {
        emit Event1(address0);
    }
    function LogEventUint1(uint256 _uint0) public {
        emit Event1(_uint0);
    }
}
pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType3 {
    uint256[2] public array0;
    event Event2(uint256 _0, uint256 _1);
    function LogEventArray2(uint64 _0, uint64 _1) public {
        emit Event2(uint0, _0);
    }
}
pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType4 {
    uint256[2] public array0;
    uint public uint0;
    event Event3(uint256 _0, address _1);
    function LogEventArray3(address _0, uint256 _1) public {
        emit Event3(uint0, _0);
    }
}
