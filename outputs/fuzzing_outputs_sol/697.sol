pragma solidity ^0.8.0;
contract Caller
{
    Mutator muta;
    function callmuta() public {
        uint b = muta.getValue();
        bytes memory encodedBytes = abi.encodePacked(uint256(b));
        (bool success, ) = address(this).call(encodedBytes);
    }
}
library Helper {

    using SafeMath for uint256;
    constructor(address _delegate) {
    }
    fallback() external payable {
        address(muta).transfer(msg.value);
    }
}
