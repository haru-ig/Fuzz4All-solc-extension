pragma solidity ^0.8.0;
contract Test43 {
    address public admin;
    mapping (address => uint) public adminOf;
    mapping (uint => bool) public adminApproved;
    bytes4 constant AdminRequestSignature = 0xe6c23ca9;
    uint constant ADMIN_DENY_REQUEST = 100;
    constructor () public {
        admin = msg.sender;
        adminApproved[ADMIN_DENY_REQUEST] [msg.sender] = 1;
    }
    function deny() public {
        require(isApprovedOrOwner(msg.sender));
        adminApproved[ADMIN_DENY_REQUEST] [msg.sender] = 0;
    }
    function isApprovedOrOwner(address addr) public view returns (bool) {
        uint idx = uint(keccak256(abi.encodePacked((msg.sender), (bytes20)""))));
        return adminApproved[ADMIN_DENY_REQUEST] [addr] || (adminApproved[ADMIN_DENY_REQUEST] [admin] && allowed[idx]);
    }
    function approve(address addr) public onlyOwner {
        uint idx = uint(keccak256(abi.encodePacked((msg.sender), (bytes20)""))));
        allowed[idx] = 1;
    }
    function revoke(address addr) public onlyOwner {
        uint idx = uint(keccak256(abi.encodePacked((msg.sender), (bytes20)""))));
        allowed[idx] = 0;
    }
    function setAdminOf(address addr, uint value) public onlyOwner {
        adminOf[addr] = value;
    }
    function adminApprove(address addr) public onlyOwner {
        adminApproved[ADMIN_DENY_REQUEST] [addr] = 1;
    }
    function adminRevoke(address addr) public onlyOwner {
        adminApproved[ADMIN_DENY_REQUEST] [addr] = 0;
    }
}

pragma solidity ^0.8.0;
contract Test44 {
    mapping (uint => bool) public adminApproved;
    constructor () public {
        require(adminApproved[ADMIN_DENY_REQUEST] [msg.sender] == true || isApprovedOrOwner(msg.sender));
    }
    function isApprovedOrOwner(address addr) public view returns (bool) {
        uint idx = uint(keccak
