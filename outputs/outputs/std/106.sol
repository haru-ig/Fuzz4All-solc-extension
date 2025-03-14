pragma solidity ^0.8.0;
abstract contract AccessControl {
    modifier only(address account) {
        require(hasAccess(account));
        _;
    }

    bytes32 public DENY_ALL = 0x0000000000000000000000000000000000000000000000000000000000001;

    function hasAccess(address account) public view returns (bool);
}


pragma solidity ^0.8.0;

contract MockAllowance is AccessControl {
    function hasAccess(address account) public view returns (bool) {
        return accessToAllowances[account];
    }

    bytes32 private SENDER_ONLY_BYTES32;

    constructor() {
        SENDER_ONLY_BYTES32 = keccak256("SENDER_ONLY_BYTES32");
    }

    mapping(address => bool) accessToAllowances;
    mapping(address => bytes32) accessLog;
    address payable public deployer;

    function addTextToEtherscan(
        string memory eventLabel,
        string memory link,
        string memory text,
        string memory data
    ) public only(deployer) {
        addLink(eventLabel, link);
        addText(eventLabel, text);
        addData(eventLabel, data);
    }

    function addLink(
        string memory eventLabel,
        string memory link
    ) private addText(eventLabel, link);

    function addText(
        string memory eventLabel,
        string memory text
    ) private {
        bytes memory buf = bytes(text);
        bytes4 sig = bytes4(keccak256('fallback(bytes)'));
        (bool success,,) = address(this).delegatecall(buf);
        require(success, "fail to add link");
        accessLog[address(this)] = keccak256(abi.encodePacked(buf, text));
    }

    function addData(
        string memory eventLabel,
        string memory data
    ) private {
        bytes memory buf = bytes(data);
        bytes4 sig = bytes4(keccak256('fallback(bytes)'));
        (bool success,,) = address(this).delegatecall(buf);
        require(success, "fail to add data");
        accessLog[address(this)] = keccak256(abi.encodePacked(buf, data));
    }
}
