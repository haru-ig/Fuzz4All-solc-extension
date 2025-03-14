pragma solidity ^0.8.0;
library Mutater {

        function fallback() public pure {}
        function test() public pure {}
}
pragma solidity ^0.8.0;
contract Caller {
    address payable _contract;
    event Call(uint index);
    struct CallContext {
        uint id;
        function() external returns(uint256) {return 0;};
        uint private returns;
    }
    bytes memory _data;
    constructor(bytes callData_) payable {
        _data = callData_;
    }
    fallback () external payable {}
    function _perform(address payable contract_) public {
        _contract = contract_;
        CallContext memory context;
        context.id = count;
        context.returns;
        context._perform(address(0));
        count = count + 1;
        emit Call(count);
    }
}
