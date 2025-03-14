pragma solidity ^0.8.0;
contract Mutate0016 {
    address public init0;

    modifier init {
        if(init0 == address(0)) {
            init0 = msg.sender;
        }
        _
    }
}

pragma solidity ^0.8.0;
contract Migrate0016f {
    function func() public {}
}
