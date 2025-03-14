pragma solidity ^0.8.0;
contract B {
    address public admin;
    struct Data {
        bytes32 digest;
        bytes data;
    }
    mapping(address => Data) public myData;
    constructor() public {
        admin = msg.sender;
        myData[msg.sender].digest = keccak256(abi.encodePacked(dateToString(block.timestamp)));
    }
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can call");
        _;
    }
    function setAdmin(address _addr) public {
        admin = _addr;
    }
    function adminAddress() external view returns (address) {
        return admin;
    }
    function keccak(bytes32 myData) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(myData));
    }
    function dateToString(uint64 t) private pure returns (bytes memory) {
        (uint y, uint m, uint d) = uint((t / 604800) % 60);
        (uint h, uint mi, uint s) = uint((t / 86400) % 24);
        (uint y2, uint m2, uint d2) = uint((t / 3600) % 31);
        if (y < 100 && m < 10 )
            m = m * 10 + 1;
        if (y < 100 && m2 <= 10)
            m2 = m2 * 10 + 1;
        return abi.encodePacked(y, "_", m, "_", d, " ", h, ":", mi, ":", s, " GMT");
    }
    function set(bytes32 _digest, bytes memory _data) public onlyAdmin {
        myData[msg.sender] = Data(_digest, _data);
    }
    function get(bytes32 _digest) public view returns (bytes memory) {
        if (myData[msg.sender].digest!= _digest) throw;
        else return myData[msg.sender].data;
    }
}
contract Caller {
    function call() internal {

        uint256 amount = 50;
        Test test = new Test();

        bytes32 digest = keccak256(abi.encodePacked(dateToString(block.timestamp)));
        B b = B(msg.sender);
        b.set(digest, abi.encode(amount));
