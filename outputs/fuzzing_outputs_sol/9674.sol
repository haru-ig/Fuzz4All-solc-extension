pragma solidity ^0.8.0;
contract CallModifier {

    function x() external payable fallback(uint);

    modifier plusOne(uint y) {
        x(); y++; _;
    }
    function xPlusOne() public view
    returns (uint) {
        x(); return x + 1;
    }
}

pragma solidity ^0.8.0;
import "@openzeppelin/contracts/utils/Context.sol";
contract CallLowLevel {
    receive() external payable {}
    function lowLevelCall() internal returns (uint256) {
        return 1;
    }
}

pragma solidity ^0.8.0;
contract TwoCalls {
    function sendEther(address payable _to, uint _amount) public {
        uint gas = 3_000_000;
        uint gasPrice = uint(gwei(10));
        _to.call{gas: gas, value: gasPrice}(abi.encodeWithSelector(Context.functionCallSelector(this.lowLevelCall.selector), _amount));
    }


    function lowLevelCall() public pure returns(uint) {
        return 1;
    }
}
