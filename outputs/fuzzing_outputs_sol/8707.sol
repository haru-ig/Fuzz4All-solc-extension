pragma solidity ^0.8.0;
contract ModifiedCaller {
    receive() external payable {}
    function fallback() public payable {
        selfdestruct(msg.sender);
    }
    function transfer() public payable {
        selfdestruct(msg.sender);
    }
}
pragma solidity ^0.8.0;
import "./Caller.sol";
contract FallbackCaller {


    address originalContract = address(new Caller());
    bytes32 originalFallback = bytes32(address(new Caller()).delegatecall(abi.encodeWithSignature("fallback()")));
    bytes32 newFallback;

    function recv()
        public
        payable
        pure
        returns (bytes32)
    {
        if (msg.sender == address(originalContract)) {
            return originalFallback;
        }

        Caller(address(originalContract)).transfer();

        Caller(address(originalContract)).fallback();

    }

    function recvFallback()
        public
        pure
        returns (
            bytes32 _modifiedFallback
        )
    {
        if (msg.sender == address(originalContract)) {
            return originalFallback;
        }
        return modifiedFallback;
    }

    function defaultFallback()
        public
        payable
        override(Caller.fallback, Caller.recvFallback, Caller, ModifiedCaller.fallback, ModifiedCaller.recvFallback)
    {
    }
}
