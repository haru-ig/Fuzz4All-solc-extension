pragma solidity ^0.8.0;
interface Grandfather{
        constructor() external;
        modifier x(){
                _;
        }
}

pragma solidity ^0.8.0;
import "./Grandfather.sol";

contract Caller is Grandfather {
        constructor () public {
                fallbackFunction(address(this), msg.data);
                receiveFunction(address(this), msg.data);
        }
        function fallbackFunction(address x, bytes memory b) public fallback {
                x.send(b);
        }
        function receiveFunction(address x, bytes memory b) public receive {
                x.send(b);
        }
}

contract CallError is Grandfather {
        constructor () public {
                fallbackFunction(address(this), msg.data);
                receiveFunction(address(this), msg.data);
        }
}

contract CallerError {
        function test() public pure returns (uint64) {
                return Fallback6(address(this)).c(3) + Fallback6(address(this)).d(0);
        }
}
