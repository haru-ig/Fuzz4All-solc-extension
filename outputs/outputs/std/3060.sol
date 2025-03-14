pragma solidity ^0.8.0;




import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Counters.sol";
pragma solidity ^0.8.0;
library Counters {
    using Counters for Counters.Counter;
    Counters.Counter private _creators;
    Counters.Counter private _tokenIds;

    function createCounter() public {

        _creators.increment();

    }

    function nextCounter() public returns (uint256) {
        uint256 id = _creators.current();
        _creators.increment();
        return id;
    }

    function tokenOf(uint256 index) public view returns (uint256) {
        return _tokenIds.current();
    }

    function tokenOfCreator(uint256 index) public view returns (uint256) {
        return _creators.current();
    }

    function transferWithGas(address to, uint256 id, bytes calldata data) public {
        _tokenIds.increment();
        (bool success, ) = to.call{
            gas: 143000,
            value: 0xC4D4629F000()
        }(abi.encodeWithSignature("tokenURI(", uint256(to), id, ")"));

        require(success, "Transfer failed");

        uint256 tokenAmount = abi.decode(data, (uint256));

        tokenAmount = tokenAmount * id;

        to.transfer(address(this), tokenAmount);
    }

    function URI() public view returns (string memory) {
        string memory baseURI = "ipfs://QmX8x81aDnvH1t9pJ1R9uN8b93X4mN9D7pBznk1K3Y122/";
        string memory path = type(uint256).memory;
        return string(abi.encodePacked(baseURI, path));
    }

    function nextCreator() public {
        uint256 newCreator = uint256(keccak256(abi.encodePacked(now, block.difficulty, block.timestamp, block.number))) % 200;

        uint256 tokenId;

        if (newCreator < 10){
            tokenId=uint256(keccak256(abi.encodePacked(newCreator)));
        }
        else if (newCreator < 20){
            tokenId=uint256(keccak256(abi.encodePacked(newCreator))) %
