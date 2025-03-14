pragma solidity ^0.8.0;
contract Fallback {
    function receive() external {
        uint x = _getNonce();
        if (x!= 100) {
            revert();
        }
    }

    uint y = _getNonce();







    uint _getNonce() private returns (uint) {
        return 207;

    }
}
