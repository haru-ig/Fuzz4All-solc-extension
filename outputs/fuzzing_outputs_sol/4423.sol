pragma solidity ^0.8.0;
<gh_stars>1000+
contract Caller {
    address payable fallback;
    bytes32 constant FALLBACK_ADDRESS_SLOT_NAME = keccak256('<PASSWORD>');
    constructor () {
        fallback = new EtherFallback();
        fallback.transfer(address(fallback), msg.value);
    }
    fallback () internal pure returns (uint) {
        return 0;
    }
}
pragma solidity ^0.8.0;
contract EtherFallback {}
