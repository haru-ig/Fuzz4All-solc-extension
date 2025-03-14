pragma solidity ^0.8.0;
interface IERC721Receiver {
    function onERC721Received(address operator, address from, uint256 tokenId, bytes memory data) external returns (bytes4 response);
}

pragma solidity ^0.8.0;
contract MultiSignature {
    address public owner;
    address[] public signers;
    uint public totalSignaturesRequired;

    uint public finalExecutionTime;
    uint public timeRemaining;

    event OwnerUpdated(address newOwner);

    constructor(address[] memory _signers, uint _requiredSignatures, uint initialTime) {
        init(_signers, _requiredSignatures, initialTime);
    }

    function init(address[] memory _signers, uint _requiredSignatures, uint initialTime) public {
        require(owner!= address(0x0), "The owner must be set to be a non-zero address.");
        require(totalSignaturesRequired >= _requiredSignatures, "The total number of signatures to be verified must be at least 1.");
        signers = _signers;
        owner = msg.sender;
        finalExecutionTime = block.timestamp.add(initialTime);
    }

    modifier onlyOwner() {
        require(owner == msg.sender, "Sender must be the owner.");
        _;
    }

    modifier onlyNotOvertime() {
        require(block.timestamp < finalExecutionTime, "Block timestamp must be before or at the final execution time.");
        _;
    }

    modifier onlyOnce() {
        uint times = 0;
        uint currentSigners = signers.length;
        require(currentSigners <= totalSignaturesRequired, "Only one signature is allowed.");
        while (times < currentSigners) {
            require(signers[times] == msg.sender, "Only permitted signatures can call this contract.");
            times += 1;
        }
        _;
    }

    function addOwner(address to) public onlyOwner {
        require(to!= address(0x0), "The owner is not a valid address.");
        address[] memory newSigners = new address[](current_signers.length + 1);
        for (uint i = 0; i < signers.length; i++) {
            newSigners[i] = signers[i];
        }
        newSigners[current_signers.length] = to;
        signers = newSigners;
    }

    function changeOwner(address _newOwner) public onlyOwner {
