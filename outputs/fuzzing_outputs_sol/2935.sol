pragma solidity ^0.8.0;
contract Modifier {
    uint256 constant uint256_max = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    bytes32 public constant modifier_method_id = 0x939b6fc7382e2d0800a369367f0c4c2da0940d5198821ea88162a1872c820c5d;
    function modifier() public pure {
        require(uint256(msg.data) > 0, "invalid data provided");
        require(keccak256(abi.encodePacked(operatorId, msg.data))
            == modifier_method_id, "incompatible modifier");
    }
    modifier only_low_level(address _lowLevel) {
        require(msg.sender == _lowLevel, "Only low-level contract");
        _;
    }
    event ModifierCall(address _lowLevel);
    function _modifier_check_low_level(address _lowLevel) private view {
        bytes memory sig = get_modifier_call_signature(operatorId, _lowLevel);
        require(bytes(sig) > 0, "not a modifier call, or the lowlevel contract not set");
    }
    receive() only_low_level(msg.sender) external {}



    function operatorId() public view returns (string memory) {
        return "Modifer";
    }
    function get_modifier_call_signature(address contract_addr, address lowLevel_addr) public pure returns (bytes memory) {


        bytes memory empty_message = hex"0000000000000000000000000000000000000000000000000000000000";
        bytes memory data_field = hex"80000000000000000000000000000000"
            + lowLevel_addr.to_bytes(32)
            + (contract_addr).to_bytes(32);
        return empty
