pragma solidity ^0.8.0;
contract Mutator {
    bytes32 private constant _HASHES_TO_TEST = keccak256('ipfs://$ipfs/Q<KEY>') ^ keccak256('ipfs://$ipfs/Q<KEY>');
    mapping(bytes32 => uint) public hashes;
    bytes32 public _previousHash;
    mapping(bytes32 => uint) public prevHashes;
    contract Caller {
        function get() external pure returns (uint) {
            return 1;
        }
        function fallback(uint x) public payable {
            bool matched;
            if (x == 1 && (matched = (_HASHES_TO_TEST!= getHash()))) {
                _previousHash = _HASHES_TO_TEST;
                assert(x == 1);
                hashes[prevHashes[_previousHash]]++;
            }
        }
        function getHash() public view returns (bytes32) {
            bytes32 h = keccak256(abi.encodePacked(block.difficulty, (block.timestamp * block.difficulty))));
            if (prevHashes[_HASHES_TO_TEST] == 0) {
                prevHashes[_HASHES_TO_TEST] = 1;
            } else {
                h = keccak256(abi.encodePacked(h, prevHashes[_HASHES_TO_TEST]));
            }
            assert(prevHashes[_previousHash] == 1);
            prevHashes[_previousHash] = 0;
            return h;
        }
    }
}
